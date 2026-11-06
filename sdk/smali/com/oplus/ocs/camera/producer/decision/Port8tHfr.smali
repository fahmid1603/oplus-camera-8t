.class public final Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;
.super Ljava/lang/Object;


# static fields
.field private static sHfr:Z

.field private static sPortrait:Z

.field private static sRtb:Z


# direct methods
.method public static apsOp(I)I
    .registers 2

    const v0, 0xa00a

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    :cond_6
    return p0
.end method

.method public static fixCamId(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-boolean v0, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->sRtb:Z

    if-eqz v0, :cond_34

    if-eqz p0, :cond_34

    const-string v0, "com.oplus.preview.camera_id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_30

    :cond_10
    const-string v0, "com.oplus.preview.feature_type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    goto :goto_23

    :cond_1a
    const-string v0, "com.oplus.preview.multi_frame_count"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    :goto_23
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_30

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_34

    :cond_30
    :goto_30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_34
    return-object p1
.end method

.method public static isRtbPreview()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->sRtb:Z

    return v0
.end method

.method public static mark(Ljava/lang/Object;)V
    .registers 2

    instance-of v0, p0, Lcom/oplus/ocs/camera/producer/mode/SlowVideoMode;

    sput-boolean v0, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->sHfr:Z

    instance-of v0, p0, Lcom/oplus/ocs/camera/producer/mode/PortraitMode;

    sput-boolean v0, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->sPortrait:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->sRtb:Z

    return-void
.end method

.method private static on(Ljava/lang/String;)Z
    .registers 3

    sget-boolean v0, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->sHfr:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->sPortrait:Z

    if-eqz v0, :cond_11

    const-string v1, "rear_portrait"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static readerFormat(Ljava/lang/Object;I)I
    .registers 5

    check-cast p0, Lcom/oplus/ocs/camera/common/surface/SurfaceWrapper;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/surface/SurfaceWrapper;->getCameraType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->on(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/surface/SurfaceWrapper;->getSurfaceUsage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "surface_key_preview"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-boolean v1, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->sHfr:Z

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->sRtb:Z

    :cond_1f
    const-string v1, "Port8tHfr"

    const-string v2, "preview ImageReader created as PRIVATE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x22

    return v0

    :cond_29
    return p1
.end method

.method public static size(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7

    sget-boolean v0, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->sPortrait:Z

    if-eqz v0, :cond_4c

    const-string v0, "rear_portrait"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0xfa0

    const/16 v2, 0xbb8

    goto :goto_32

    :cond_19
    const-string v0, "capture_yuv"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v1, 0xc80

    const/16 v2, 0x960

    goto :goto_32

    :cond_26
    const-string v0, "preview_frame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    :goto_32
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Port8tHfr"

    const-string v3, "rear_portrait stream size override"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4c
    return-object p0
.end method

.method public static usage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6

    invoke-static {p1}, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->on(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v1, "surface_key_preview"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x100

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_15
    return-object p2
.end method
