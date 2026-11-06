.class public Lcom/oplus/ocs/camera/producer/decision/Port8tRtbCap;
.super Ljava/lang/Object;


# direct methods
.method public static dropSlave(Lcom/oplus/ocs/camera/consumer/apsAdapter/adapter/ApsResult$ImageBuffer;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {}, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->isRtbPreview()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/consumer/apsAdapter/adapter/ApsResult$ImageBuffer;->getImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v1

    const/16 v2, 0xc80

    if-ne v1, v2, :cond_25

    const-string v1, "Port8tRtbCap"

    const-string v2, "drop UW 3200x2400 picture image before APS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/consumer/apsAdapter/adapter/ApsResult$ImageBuffer;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_23} :catch_25

    const/4 v0, 0x1

    return v0

    :catch_25
    :cond_25
    const/4 v0, 0x0

    return v0
.end method
