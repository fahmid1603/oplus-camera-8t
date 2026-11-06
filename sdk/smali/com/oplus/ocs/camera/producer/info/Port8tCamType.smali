.class public final Lcom/oplus/ocs/camera/producer/info/Port8tCamType;
.super Ljava/lang/Object;
.source "Port8tCamType.java"


# direct methods
.method public static get(Ljava/lang/String;)[I
    .registers 4

    const/4 v1, -0x1

    if-eqz p0, :cond_1d

    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_1d

    packed-switch v0, :pswitch_data_28

    goto :goto_1d

    :pswitch_b
    const/4 v1, 0x0

    goto :goto_1d

    :pswitch_d
    const/4 v1, 0x1

    goto :goto_1d

    :pswitch_f
    const/4 v1, 0x2

    goto :goto_1d

    :pswitch_11
    const/16 v1, 0x11

    goto :goto_1d

    :pswitch_14
    const/16 v1, 0xd

    goto :goto_1d

    :pswitch_17
    const/16 v1, 0xc

    goto :goto_1d

    :pswitch_1a
    const/16 v1, 0x8

    goto :goto_1d

    :catch_1d
    :cond_1d
    :goto_1d
    :pswitch_1d
    if-gez v1, :cond_21

    const/4 v2, 0x0

    return-object v2

    :cond_21
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v0, 0x0

    aput v1, v2, v0

    return-object v2

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method
