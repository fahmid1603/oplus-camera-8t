.class public final Lcom/p8t/Port8tCompat;
.super Ljava/lang/Object;
.source "Port8tCompat.java"

# p8t: camera 7 app passes some int[] request keys as long[]; convert, everything else unchanged

.method public static ia(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p0, [J

    if-eqz v0, :ret

    check-cast p0, [J

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :loop
    if-ge v2, v0, :done

    aget-wide v3, p0, v2

    long-to-int v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :loop

    :done
    const-string v2, "Port8tCompat"

    const-string v3, "long[] -> int[]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :ret
    return-object p0
.end method
