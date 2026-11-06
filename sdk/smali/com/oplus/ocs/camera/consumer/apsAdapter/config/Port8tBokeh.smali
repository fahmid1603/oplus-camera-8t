.class public Lcom/oplus/ocs/camera/consumer/apsAdapter/config/Port8tBokeh;
.super Ljava/lang/Object;


# direct methods
.method public static portraitBokehOn(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    if-nez p0, :cond_3

    return-object p0

    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "aps_capture_configs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4f

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4a

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_47

    const-string v5, "mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "portrait"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    const-string v5, "entity"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_47

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_47

    const-string v7, "aps_algo_bokeh"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "Port8tBokeh"

    const-string v8, "java algo_switch: portrait rear aps_algo_bokeh=1"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_4a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_4e} :catch_4f

    return-object v0

    :catch_4f
    :cond_4f
    return-object p0
.end method

.method public static strip([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_3

    return-object p0

    :cond_3
    invoke-static {}, Lcom/oplus/ocs/camera/producer/decision/Port8tHfr;->isRtbPreview()Z

    move-result v0

    if-nez v0, :cond_a

    return-object p0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_12
    if-ge v2, v1, :cond_26

    aget-object v3, p0, v2

    const-string v4, "aps_algo_bokeh"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v6, 0x1

    goto :goto_23

    :cond_20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_26
    if-nez v6, :cond_29

    return-object p0

    :cond_29
    const-string v3, "Port8tBokeh"

    const-string v4, "RTB: removed aps_algo_bokeh from capture algo flags"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
