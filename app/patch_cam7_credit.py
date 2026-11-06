#!/usr/bin/env python3
# p8t: porter signature in camera 7.
#   new class com.p8t.Port8tCredit
#     WHOAMI = "camera7_port_whoami_Pedestrian"
#     hello(Activity)       : logcat "p8t: camera7_port_whoami_Pedestrian" (every launch)
#     focus(Activity, bool) : first time the camera window gets focus (right when the camera opens), show a camera-style hint pill
#                             in its own PopupWindow (frosted-glass style: translucent white gradient + hairline border, white 14sp system font + camera emoji, centered on screen, shown at once, 8 s, 0.5 s fade out);
#                             remembered in SharedPreferences p8t_credit/shown.
#   com.oplus.camera.Camera.onAttachedToWindow() -> hello(this)
#   com.oplus.camera.Camera.onWindowFocusChanged(Z) -> focus(this, hasFocus)
import os, re, sys
d = sys.argv[1]
WHO = "camera7_port_whoami_Pedestrian"
MSG = "\\ud83d\\udcf7  RememberTheName_PEDESTRIAN"   # camera emoji + text (smali unicode escapes)
cam = os.path.join(d, "com", "oplus", "camera", "Camera.smali")
s = open(cam).read()
if "Lcom/p8t/Port8tCredit;" in s:
    print("already patched"); sys.exit(0)

def inject(s, sig, lines):
    mm = re.search(r"^\.method (?![^\n]*\b(?:static|abstract|native)\b)[^\n]*\b" + sig + r"\n(.*?)^\.end method", s, re.M | re.S)
    if not mm:
        return None
    body = mm.group(1).split("\n")
    i = 0
    while i < len(body) and not re.match(r"\s*\.(registers|locals)\s+\d+", body[i]):
        i += 1
    if i == len(body):
        return None
    i += 1
    in_blk = None
    while i < len(body):
        t = body[i].strip()
        if in_blk:
            i += 1
            if t == in_blk: in_blk = None
            continue
        if t.startswith(".annotation"):
            in_blk = ".end annotation"; i += 1; continue
        if t.startswith(".param"):
            if i + 1 < len(body) and body[i+1].strip().startswith(".annotation"): in_blk = ".end param"
            i += 1; continue
        if t == "" or t.startswith("#") or t.startswith(".prologue") or t.startswith(".line"):
            i += 1; continue
        break
    body[i:i] = lines + [""]
    return s[:mm.start(1)] + "\n".join(body) + s[mm.end(1):]

r = inject(s, r"onWindowFocusChanged\(Z\)V", ["    # p8t: porter credit toast (first focus after permissions)",
                                               "    invoke-static {p0, p1}, Lcom/p8t/Port8tCredit;->focus(Landroid/app/Activity;Z)V"])
if r is None:
    sys.exit("Camera.onWindowFocusChanged(Z) not found")
s = r
done = ["onWindowFocusChanged"]
for sig in (r"onAttachedToWindow\(\)V", r"onCreate\(Landroid/os/Bundle;\)V", r"onResume\(\)V"):
    r = inject(s, sig, ["    # p8t: porter signature (logcat)",
                        "    invoke-static {p0}, Lcom/p8t/Port8tCredit;->hello(Landroid/app/Activity;)V"])
    if r is not None:
        s = r; done.append(sig.split("\\")[0]); break
open(cam, "w").write(s)
os.makedirs(os.path.join(d, "com", "p8t"), exist_ok=True)
CREDIT = """.class public final Lcom/p8t/Port8tCredit;
.super Ljava/lang/Object;
.source "Port8tCredit.java"

# OnePlus 8T (kebab) COS17 port - camera 7 port by pedestrian (t.me/pedestrian1603)
.field public static final WHOAMI:Ljava/lang/String; = "@WHO@"

.method public static hello(Landroid/app/Activity;)V
    .registers 3
    const-string v0, "p8t"
    const-string v1, "@WHO@"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method

# first window focus of the camera (right at open): show a camera-style hint pill once, ~8 s
.method public static focus(Landroid/app/Activity;Z)V
    .registers 12

    if-eqz p1, :done

    :try_start
    const-string v0, "p8t_credit"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v2
    const-string v3, "shown"
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v4
    if-nez v4, :done

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const/4 v1, 0x1
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v6, Landroid/widget/TextView;
    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v0, "@MSG@"
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/4 v0, -0x1
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V
    # toast-like font: system default sans-serif, 14sp
    const/4 v0, 0x2
    const/high16 v1, 0x41600000
    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V
    const/high16 v0, 0x40c00000
    const/4 v1, 0x0
    const/high16 v2, 0x3f800000
    const/high16 v3, -0x80000000
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    # padding 22dp x 12dp
    const/high16 v0, 0x41b00000
    mul-float/2addr v0, v5
    float-to-int v0, v0
    const/high16 v1, 0x41400000
    mul-float/2addr v1, v5
    float-to-int v1, v1
    invoke-virtual {v6, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    # "glass" pill: translucent white top->bottom gradient, hairline white border, full round corners
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;
    const/4 v1, 0x3
    new-array v1, v1, [I
    fill-array-data v1, :p8t_glass_colors
    invoke-direct {v7, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    const/high16 v0, 0x42c80000
    mul-float/2addr v0, v5
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    const/high16 v0, 0x3f800000
    mul-float/2addr v0, v5
    float-to-int v0, v0
    const v1, 0x73ffffff
    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    # PopupWindow = its own panel window above the activity (and above the camera preview surface)
    new-instance v7, Landroid/widget/PopupWindow;
    const/4 v0, -0x2
    invoke-direct {v7, v6, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V
    const/4 v0, 0x0
    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V
    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V
    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    const/4 v1, 0x0
    const/16 v2, 0x11
    const/4 v3, 0x0
    invoke-virtual {v7, v0, v2, v3, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    new-instance v0, Lcom/p8t/Port8tCredit$Hide;
    const/4 v1, 0x0
    invoke-direct {v0, v6, v7, v1}, Lcom/p8t/Port8tCredit$Hide;-><init>(Landroid/view/View;Landroid/widget/PopupWindow;I)V
    const-wide/16 v8, 0x1f40
    invoke-virtual {v6, v0, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/p8t/Port8tCredit$Hide;
    const/4 v1, 0x1
    invoke-direct {v0, v6, v7, v1}, Lcom/p8t/Port8tCredit$Hide;-><init>(Landroid/view/View;Landroid/widget/PopupWindow;I)V
    const-wide/16 v8, 0x2198
    invoke-virtual {v6, v0, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "p8t"
    const-string v1, "credit hint shown"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end
    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :done

    :done
    return-void

    :p8t_glass_colors
    .array-data 4
        0x59ffffff
        0x33ffffff
        0x40ffffff
    .end array-data
.end method
"""
HIDE = """.class final Lcom/p8t/Port8tCredit$Hide;
.super Ljava/lang/Object;
.source "Port8tCredit.java"

# implements
.implements Ljava/lang/Runnable;

.field final m:I
.field final p:Landroid/widget/PopupWindow;
.field final v:Landroid/view/View;

.method constructor <init>(Landroid/view/View;Landroid/widget/PopupWindow;I)V
    .registers 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/p8t/Port8tCredit$Hide;->v:Landroid/view/View;
    iput-object p2, p0, Lcom/p8t/Port8tCredit$Hide;->p:Landroid/widget/PopupWindow;
    iput p3, p0, Lcom/p8t/Port8tCredit$Hide;->m:I
    return-void
.end method

# m=0: fade out, m=1: dismiss the popup
.method public run()V
    .registers 5
    :try_start
    iget-object v0, p0, Lcom/p8t/Port8tCredit$Hide;->v:Landroid/view/View;
    iget v1, p0, Lcom/p8t/Port8tCredit$Hide;->m:I
    if-eqz v1, :fade
    iget-object v1, p0, Lcom/p8t/Port8tCredit$Hide;->p:Landroid/widget/PopupWindow;
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    goto :ret
    :fade
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
    move-result-object v1
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
    move-result-object v1
    const-wide/16 v2, 0x1f4
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end
    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :ret
    :ret
    return-void
.end method
"""
open(os.path.join(d, "com", "p8t", "Port8tCredit.smali"), "w").write(CREDIT.replace("@WHO@", WHO).replace("@MSG@", MSG))
open(os.path.join(d, "com", "p8t", "Port8tCredit$Hide.smali"), "w").write(HIDE)
print("credit: Port8tCredit added, hooks: " + ", ".join(done))
