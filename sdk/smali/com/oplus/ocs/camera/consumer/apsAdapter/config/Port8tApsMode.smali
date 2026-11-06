.class public final Lcom/oplus/ocs/camera/consumer/apsAdapter/config/Port8tApsMode;
.super Ljava/lang/Object;


# direct methods
.method public static dump(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_2a

    if-eqz p1, :cond_2a

    :try_start_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2a

    new-instance v1, Ljava/io/File;

    const-string v2, "port8t_algo_switch.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const-string v0, "Port8tApsMode"

    const-string v2, "dumped decrypted algo switch config"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2a} :catch_2a

    :catch_2a
    :cond_2a
    return-void
.end method

.method public static map(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "portrait"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "common"

    :cond_a
    return-object p0
.end method
