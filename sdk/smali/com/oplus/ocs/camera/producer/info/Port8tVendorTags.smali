.class public final Lcom/oplus/ocs/camera/producer/info/Port8tVendorTags;
.super Ljava/lang/Object;


# direct methods
.method public static build(Ljava/lang/Object;Ljava/util/Map;)[Ljava/lang/String;
    .registers 6

    const/16 v0, 0x428

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x0

    const-string v2, "org.codeaurora.qcamera3.internal_private.private_property"

    aput-object v2, v0, v1

    const/16 v1, 0x1

    const-string v3, "-2147483648"

    aput-object v3, v0, v1

    if-eqz p1, :cond_19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const/16 v1, 0x2

    const-string v2, "org.codeaurora.qcamera3.exposure_metering.exposure_metering_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x3

    const-string v3, "-2147418112"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    const/16 v1, 0x4

    const-string v2, "org.codeaurora.qcamera3.exposure_metering.available_modes"

    aput-object v2, v0, v1

    const/16 v1, 0x5

    const-string v3, "-2147418111"

    aput-object v3, v0, v1

    if-eqz p1, :cond_43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    const/16 v1, 0x6

    const-string v2, "org.codeaurora.qcamera3.aec_convergence_speed.aec_speed"

    aput-object v2, v0, v1

    const/16 v1, 0x7

    const-string v3, "-2147352576"

    aput-object v3, v0, v1

    if-eqz p1, :cond_58

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    const/16 v1, 0x8

    const-string v2, "org.codeaurora.qcamera3.sharpness.strength"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v3, "-2147287040"

    aput-object v3, v0, v1

    if-eqz p1, :cond_6d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    const/16 v1, 0xa

    const-string v2, "org.codeaurora.qcamera3.sharpness.range"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v3, "-2147287039"

    aput-object v3, v0, v1

    if-eqz p1, :cond_82

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
    const/16 v1, 0xc

    const-string v2, "org.codeaurora.qcamera3.contrast.level"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v3, "-2147221504"

    aput-object v3, v0, v1

    if-eqz p1, :cond_97

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_97
    const/16 v1, 0xe

    const-string v2, "org.codeaurora.qcamera3.iso_exp_priority.use_iso_exp_priority"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v3, "-2147155968"

    aput-object v3, v0, v1

    if-eqz p1, :cond_ac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ac
    const/16 v1, 0x10

    const-string v2, "org.codeaurora.qcamera3.iso_exp_priority.use_iso_value"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v3, "-2147155967"

    aput-object v3, v0, v1

    if-eqz p1, :cond_c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c1
    const/16 v1, 0x12

    const-string v2, "org.codeaurora.qcamera3.iso_exp_priority.select_priority"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v3, "-2147155966"

    aput-object v3, v0, v1

    if-eqz p1, :cond_d6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d6
    const/16 v1, 0x14

    const-string v2, "org.codeaurora.qcamera3.iso_exp_priority.iso_available_modes"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v3, "-2147155965"

    aput-object v3, v0, v1

    if-eqz p1, :cond_eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_eb
    const/16 v1, 0x16

    const-string v2, "org.codeaurora.qcamera3.iso_exp_priority.exposure_time_range"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v3, "-2147155964"

    aput-object v3, v0, v1

    if-eqz p1, :cond_100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_100
    const/16 v1, 0x18

    const-string v2, "org.codeaurora.qcamera3.iso_exp_priority.use_gain_value"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v3, "-2147155963"

    aput-object v3, v0, v1

    if-eqz p1, :cond_115

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_115
    const/16 v1, 0x1a

    const-string v2, "org.codeaurora.qcamera3.histogram.enable"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v3, "-2147090432"

    aput-object v3, v0, v1

    if-eqz p1, :cond_12a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12a
    const/16 v1, 0x1c

    const-string v2, "org.codeaurora.qcamera3.histogram.buckets"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v3, "-2147090431"

    aput-object v3, v0, v1

    if-eqz p1, :cond_13f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13f
    const/16 v1, 0x1e

    const-string v2, "org.codeaurora.qcamera3.histogram.max_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v3, "-2147090430"

    aput-object v3, v0, v1

    if-eqz p1, :cond_154

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_154
    const/16 v1, 0x20

    const-string v2, "org.codeaurora.qcamera3.histogram.stats"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v3, "-2147090429"

    aput-object v3, v0, v1

    if-eqz p1, :cond_169

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_169
    const/16 v1, 0x22

    const-string v2, "org.codeaurora.qcamera3.histogram.stats_type"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v3, "-2147090428"

    aput-object v3, v0, v1

    if-eqz p1, :cond_17e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17e
    const/16 v1, 0x24

    const-string v2, "org.codeaurora.qcamera3.bayer_grid.enable"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v3, "-2147024896"

    aput-object v3, v0, v1

    if-eqz p1, :cond_193

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_193
    const/16 v1, 0x26

    const-string v2, "org.codeaurora.qcamera3.bayer_grid.width"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v3, "-2147024895"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a8
    const/16 v1, 0x28

    const-string v2, "org.codeaurora.qcamera3.bayer_grid.height"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v3, "-2147024894"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1bd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1bd
    const/16 v1, 0x2a

    const-string v2, "org.codeaurora.qcamera3.bayer_grid.r_stats"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v3, "-2147024893"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d2
    const/16 v1, 0x2c

    const-string v2, "org.codeaurora.qcamera3.bayer_grid.g_stats"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v3, "-2147024892"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1e7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e7
    const/16 v1, 0x2e

    const-string v2, "org.codeaurora.qcamera3.bayer_grid.b_stats"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v3, "-2147024891"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fc
    const/16 v1, 0x30

    const-string v2, "org.codeaurora.qcamera3.bayer_grid.stats_type"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v3, "-2147024890"

    aput-object v3, v0, v1

    if-eqz p1, :cond_211

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_211
    const/16 v1, 0x32

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.enable"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v3, "-2146959360"

    aput-object v3, v0, v1

    if-eqz p1, :cond_226

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_226
    const/16 v1, 0x34

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.width"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v3, "-2146959359"

    aput-object v3, v0, v1

    if-eqz p1, :cond_23b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23b
    const/16 v1, 0x36

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.height"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v3, "-2146959358"

    aput-object v3, v0, v1

    if-eqz p1, :cond_250

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_250
    const/16 v1, 0x38

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.r_stats"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v3, "-2146959357"

    aput-object v3, v0, v1

    if-eqz p1, :cond_265

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_265
    const/16 v1, 0x3a

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.g_stats"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v3, "-2146959356"

    aput-object v3, v0, v1

    if-eqz p1, :cond_27a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27a
    const/16 v1, 0x3c

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.b_stats"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v3, "-2146959355"

    aput-object v3, v0, v1

    if-eqz p1, :cond_28f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28f
    const/16 v1, 0x3e

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.stats_type"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v3, "-2146959354"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a4
    const/16 v1, 0x40

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.roi_be_x"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v3, "-2146959353"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2b9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b9
    const/16 v1, 0x42

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.roi_be_y"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v3, "-2146959352"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2ce

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2ce
    const/16 v1, 0x44

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.roi_be_width"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v3, "-2146959351"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e3
    const/16 v1, 0x46

    const-string v2, "org.codeaurora.qcamera3.bayer_exposure.roi_be_height"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v3, "-2146959350"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f8
    const/16 v1, 0x48

    const-string v2, "org.codeaurora.qcamera3.instant_aec.instant_aec_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v3, "-2146893824"

    aput-object v3, v0, v1

    if-eqz p1, :cond_30d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30d
    const/16 v1, 0x4a

    const-string v2, "org.codeaurora.qcamera3.instant_aec.instant_aec_available_modes"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v3, "-2146893823"

    aput-object v3, v0, v1

    if-eqz p1, :cond_322

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_322
    const/16 v1, 0x4c

    const-string v2, "org.codeaurora.qcamera3.awb_convergence_speed.awb_speed"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v3, "-2146828288"

    aput-object v3, v0, v1

    if-eqz p1, :cond_337

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_337
    const/16 v1, 0x4e

    const-string v2, "org.codeaurora.qcamera3.ae_bracket.mode"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v3, "-2146762752"

    aput-object v3, v0, v1

    if-eqz p1, :cond_34c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34c
    const/16 v1, 0x50

    const-string v2, "org.codeaurora.qcamera3.ae_bracket.num_frames"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v3, "-2146762751"

    aput-object v3, v0, v1

    if-eqz p1, :cond_361

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_361
    const/16 v1, 0x52

    const-string v2, "org.codeaurora.qcamera3.ae_bracket.exposure_values"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v3, "-2146762750"

    aput-object v3, v0, v1

    if-eqz p1, :cond_376

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_376
    const/16 v1, 0x54

    const-string v2, "org.codeaurora.qcamera3.jpeg_encode_crop.enable"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v3, "-2146697216"

    aput-object v3, v0, v1

    if-eqz p1, :cond_38b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38b
    const/16 v1, 0x56

    const-string v2, "org.codeaurora.qcamera3.jpeg_encode_crop.rect"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v3, "-2146697215"

    aput-object v3, v0, v1

    if-eqz p1, :cond_3a0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a0
    const/16 v1, 0x58

    const-string v2, "org.codeaurora.qcamera3.jpeg_encode_crop.roi"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v3, "-2146697214"

    aput-object v3, v0, v1

    if-eqz p1, :cond_3b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b5
    const/16 v1, 0x5a

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.dynamic_black_level_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v3, "-2146631680"

    aput-object v3, v0, v1

    if-eqz p1, :cond_3ca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3ca
    const/16 v1, 0x5c

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.is_mono_only"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v3, "-2146631679"

    aput-object v3, v0, v1

    if-eqz p1, :cond_3df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3df
    const/16 v1, 0x5e

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.sensor_mode_index"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v3, "-2146631678"

    aput-object v3, v0, v1

    if-eqz p1, :cond_3f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f4
    const/16 v1, 0x60

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.EEPROMInformation"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v3, "-2146631677"

    aput-object v3, v0, v1

    if-eqz p1, :cond_409

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_409
    const/16 v1, 0x62

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.integration_information"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v3, "-2146631676"

    aput-object v3, v0, v1

    if-eqz p1, :cond_41e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41e
    const/16 v1, 0x64

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.mountAngle"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v3, "-2146631675"

    aput-object v3, v0, v1

    if-eqz p1, :cond_433

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_433
    const/16 v1, 0x66

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.cameraPosition"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v3, "-2146631674"

    aput-object v3, v0, v1

    if-eqz p1, :cond_448

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_448
    const/16 v1, 0x68

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.sensor_mode_info"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v3, "-2146631673"

    aput-object v3, v0, v1

    if-eqz p1, :cond_45d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45d
    const/16 v1, 0x6a

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.sensor_pdaf_info"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v3, "-2146631672"

    aput-object v3, v0, v1

    if-eqz p1, :cond_472

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_472
    const/16 v1, 0x6c

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.current_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v3, "-2146631671"

    aput-object v3, v0, v1

    if-eqz p1, :cond_487

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_487
    const/16 v1, 0x6e

    const-string v2, "org.codeaurora.qcamera3.sensor_meta_data.targetFPS"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v3, "-2146631670"

    aput-object v3, v0, v1

    if-eqz p1, :cond_49c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49c
    const/16 v1, 0x70

    const-string v2, "org.codeaurora.qcamera3.av_timer.use_av_timer"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v3, "-2146566144"

    aput-object v3, v0, v1

    if-eqz p1, :cond_4b1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b1
    const/16 v1, 0x72

    const-string v2, "org.quic.camera2.statsconfigs.AECStatsControl"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v3, "-2146500608"

    aput-object v3, v0, v1

    if-eqz p1, :cond_4c6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c6
    const/16 v1, 0x74

    const-string v2, "org.quic.camera2.statsconfigs.AWBStatsControl"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v3, "-2146500607"

    aput-object v3, v0, v1

    if-eqz p1, :cond_4db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4db
    const/16 v1, 0x76

    const-string v2, "org.quic.camera2.statsconfigs.AFStatsControl"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v3, "-2146500606"

    aput-object v3, v0, v1

    if-eqz p1, :cond_4f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f0
    const/16 v1, 0x78

    const-string v2, "org.quic.camera2.statsconfigs.AFDStatsControl"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v3, "-2146500605"

    aput-object v3, v0, v1

    if-eqz p1, :cond_505

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_505
    const/16 v1, 0x7a

    const-string v2, "org.quic.camera2.statsconfigs.IHistStatsControl"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v3, "-2146500604"

    aput-object v3, v0, v1

    if-eqz p1, :cond_51a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51a
    const/16 v1, 0x7c

    const-string v2, "org.quic.camera2.statsconfigs.AECFrameControl"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v3, "-2146500603"

    aput-object v3, v0, v1

    if-eqz p1, :cond_52f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52f
    const/16 v1, 0x7e

    const-string v2, "org.quic.camera2.statsconfigs.AWBFrameControl"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v3, "-2146500602"

    aput-object v3, v0, v1

    if-eqz p1, :cond_544

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_544
    const/16 v1, 0x80

    const-string v2, "org.quic.camera2.statsconfigs.AFFrameControl"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v3, "-2146500601"

    aput-object v3, v0, v1

    if-eqz p1, :cond_559

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_559
    const/16 v1, 0x82

    const-string v2, "org.quic.camera2.statsconfigs.DigitalGainControl"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v3, "-2146500600"

    aput-object v3, v0, v1

    if-eqz p1, :cond_56e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56e
    const/16 v1, 0x84

    const-string v2, "org.quic.camera2.statsconfigs.AWBWarmstartGain"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v3, "-2146500599"

    aput-object v3, v0, v1

    if-eqz p1, :cond_583

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_583
    const/16 v1, 0x86

    const-string v2, "org.quic.camera2.statsconfigs.AWBWarmstartCCT"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v3, "-2146500598"

    aput-object v3, v0, v1

    if-eqz p1, :cond_598

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_598
    const/16 v1, 0x88

    const-string v2, "org.quic.camera2.statsconfigs.AWBFrameControlRGain"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v3, "-2146500597"

    aput-object v3, v0, v1

    if-eqz p1, :cond_5ad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5ad
    const/16 v1, 0x8a

    const-string v2, "org.quic.camera2.statsconfigs.AWBFrameControlGGain"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v3, "-2146500596"

    aput-object v3, v0, v1

    if-eqz p1, :cond_5c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c2
    const/16 v1, 0x8c

    const-string v2, "org.quic.camera2.statsconfigs.AWBFrameControlBGain"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v3, "-2146500595"

    aput-object v3, v0, v1

    if-eqz p1, :cond_5d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d7
    const/16 v1, 0x8e

    const-string v2, "org.quic.camera2.statsconfigs.AWBFrameControlCCT"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v3, "-2146500594"

    aput-object v3, v0, v1

    if-eqz p1, :cond_5ec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5ec
    const/16 v1, 0x90

    const-string v2, "org.quic.camera2.statsconfigs.AWBDecisionAfterTC"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v3, "-2146500593"

    aput-object v3, v0, v1

    if-eqz p1, :cond_601

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_601
    const/16 v1, 0x92

    const-string v2, "org.quic.camera2.statsconfigs.HistNodeLTCRatioIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v3, "-2146500592"

    aput-object v3, v0, v1

    if-eqz p1, :cond_616

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_616
    const/16 v1, 0x94

    const-string v2, "org.quic.camera2.statsconfigs.AECStartUpSensitivity"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v3, "-2146500591"

    aput-object v3, v0, v1

    if-eqz p1, :cond_62b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62b
    const/16 v1, 0x96

    const-string v2, "org.quic.camera2.statsconfigs.AECSensitivity"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v3, "-2146500590"

    aput-object v3, v0, v1

    if-eqz p1, :cond_640

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_640
    const/16 v1, 0x98

    const-string v2, "org.quic.camera2.statsconfigs.AECExposureTime"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v3, "-2146500589"

    aput-object v3, v0, v1

    if-eqz p1, :cond_655

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_655
    const/16 v1, 0x9a

    const-string v2, "org.quic.camera2.statsconfigs.AECLinearGain"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v3, "-2146500588"

    aput-object v3, v0, v1

    if-eqz p1, :cond_66a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66a
    const/16 v1, 0x9c

    const-string v2, "org.quic.camera2.statsconfigs.AECLuxIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v3, "-2146500587"

    aput-object v3, v0, v1

    if-eqz p1, :cond_67f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67f
    const/16 v1, 0x9e

    const-string v2, "org.quic.camera2.statsconfigs.FovcEnable"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v3, "-2146500586"

    aput-object v3, v0, v1

    if-eqz p1, :cond_694

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_694
    const/16 v1, 0xa0

    const-string v2, "org.quic.camera2.statsconfigs.AWBFrameControlMCCconf"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v3, "-2146500585"

    aput-object v3, v0, v1

    if-eqz p1, :cond_6a9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6a9
    const/16 v1, 0xa2

    const-string v2, "org.quic.camera2.statsconfigs.FOVCFrameControl"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v3, "-2146500584"

    aput-object v3, v0, v1

    if-eqz p1, :cond_6be

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6be
    const/16 v1, 0xa4

    const-string v2, "org.quic.camera2.statsconfigs.AWBFrameControlBlueSkyFlag"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v3, "-2146500583"

    aput-object v3, v0, v1

    if-eqz p1, :cond_6d3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d3
    const/16 v1, 0xa6

    const-string v2, "org.quic.camera2.iqsettings.OEMIFEIQSetting"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v3, "-2146435072"

    aput-object v3, v0, v1

    if-eqz p1, :cond_6e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e8
    const/16 v1, 0xa8

    const-string v2, "org.quic.camera2.iqsettings.OEMBPSIQSetting"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v3, "-2146435071"

    aput-object v3, v0, v1

    if-eqz p1, :cond_6fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6fd
    const/16 v1, 0xaa

    const-string v2, "org.quic.camera2.iqsettings.OEMIPEIQSetting"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v3, "-2146435070"

    aput-object v3, v0, v1

    if-eqz p1, :cond_712

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_712
    const/16 v1, 0xac

    const-string v2, "org.quic.camera2.streamconfigs.HDRVideoMode"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v3, "-2146369536"

    aput-object v3, v0, v1

    if-eqz p1, :cond_727

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_727
    const/16 v1, 0xae

    const-string v2, "org.quic.camera2.jpegquantizationtables.OEMJPEGLumaQuantizationTable"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v3, "-2146304000"

    aput-object v3, v0, v1

    if-eqz p1, :cond_73c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73c
    const/16 v1, 0xb0

    const-string v2, "org.quic.camera2.jpegquantizationtables.OEMJPEGChromaQuantizationTable"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v3, "-2146303999"

    aput-object v3, v0, v1

    if-eqz p1, :cond_751

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_751
    const/16 v1, 0xb2

    const-string v2, "org.quic.camera2.sensor_register_control.sensor_register_control"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v3, "-2146238464"

    aput-object v3, v0, v1

    if-eqz p1, :cond_766

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_766
    const/16 v1, 0xb4

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICAInPerspectiveTransform"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v3, "-2146172928"

    aput-object v3, v0, v1

    if-eqz p1, :cond_77b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77b
    const/16 v1, 0xb6

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICAInGridOut2InTransform"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v3, "-2146172927"

    aput-object v3, v0, v1

    if-eqz p1, :cond_790

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_790
    const/16 v1, 0xb8

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICAInGridIn2OutTransform"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v3, "-2146172926"

    aput-object v3, v0, v1

    if-eqz p1, :cond_7a5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a5
    const/16 v1, 0xba

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICAInInterpolationParams"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v3, "-2146172925"

    aput-object v3, v0, v1

    if-eqz p1, :cond_7ba

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7ba
    const/16 v1, 0xbc

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICARefPerspectiveTransform"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v3, "-2146172924"

    aput-object v3, v0, v1

    if-eqz p1, :cond_7cf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7cf
    const/16 v1, 0xbe

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICARefGridTransform"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v3, "-2146172923"

    aput-object v3, v0, v1

    if-eqz p1, :cond_7e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7e4
    const/16 v1, 0xc0

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICARefInterpolationParams"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v3, "-2146172922"

    aput-object v3, v0, v1

    if-eqz p1, :cond_7f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f9
    const/16 v1, 0xc2

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICAReferenceParams"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v3, "-2146172921"

    aput-object v3, v0, v1

    if-eqz p1, :cond_80e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80e
    const/16 v1, 0xc4

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICAReferenceParamsLookAhead"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v3, "-2146172920"

    aput-object v3, v0, v1

    if-eqz p1, :cond_823

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_823
    const/16 v1, 0xc6

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICAInPerspectiveTransformLookAhead"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v3, "-2146172919"

    aput-object v3, v0, v1

    if-eqz p1, :cond_838

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_838
    const/16 v1, 0xc8

    const-string v2, "org.quic.camera2.ipeicaconfigs.ICAInGridTransformLookahead"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v3, "-2146172918"

    aput-object v3, v0, v1

    if-eqz p1, :cond_84d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84d
    const/16 v1, 0xca

    const-string v2, "org.quic.camera2.ipeicaconfigs.ExtraFrameworkBuffers"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v3, "-2146172917"

    aput-object v3, v0, v1

    if-eqz p1, :cond_862

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_862
    const/16 v1, 0xcc

    const-string v2, "org.quic.camera2.mfnrconfigs.MFNRTotalNumFrames"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v3, "-2146107392"

    aput-object v3, v0, v1

    if-eqz p1, :cond_877

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_877
    const/16 v1, 0xce

    const-string v2, "org.quic.camera2.mfnrconfigs.MFNRBlendFrameNum"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v3, "-2146107391"

    aput-object v3, v0, v1

    if-eqz p1, :cond_88c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_88c
    const/16 v1, 0xd0

    const-string v2, "org.quic.camera2.mfsrconfigs.MFSRTotalNumFrames"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v3, "-2146041856"

    aput-object v3, v0, v1

    if-eqz p1, :cond_8a1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8a1
    const/16 v1, 0xd2

    const-string v2, "org.quic.camera2.mfsrconfigs.MFSRBlendFrameNum"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v3, "-2146041855"

    aput-object v3, v0, v1

    if-eqz p1, :cond_8b6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b6
    const/16 v1, 0xd4

    const-string v2, "org.quic.camera.debugdata.DebugDataAll"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v3, "-2145976320"

    aput-object v3, v0, v1

    if-eqz p1, :cond_8cb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8cb
    const/16 v1, 0xd6

    const-string v2, "org.quic.camera.debugdata.DebugDataAEC"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v3, "-2145976319"

    aput-object v3, v0, v1

    if-eqz p1, :cond_8e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e0
    const/16 v1, 0xd8

    const-string v2, "org.quic.camera.debugdata.DebugDataAWB"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v3, "-2145976318"

    aput-object v3, v0, v1

    if-eqz p1, :cond_8f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8f5
    const/16 v1, 0xda

    const-string v2, "org.quic.camera.debugdata.DebugDataAF"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v3, "-2145976317"

    aput-object v3, v0, v1

    if-eqz p1, :cond_90a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_90a
    const/16 v1, 0xdc

    const-string v2, "org.quic.camera.tuningdata.TuningDataDump"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v3, "-2145910784"

    aput-object v3, v0, v1

    if-eqz p1, :cond_91f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_91f
    const/16 v1, 0xde

    const-string v2, "org.quic.camera.focusvalue.FocusValue"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v3, "-2145845248"

    aput-object v3, v0, v1

    if-eqz p1, :cond_934

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_934
    const/16 v1, 0xe0

    const-string v2, "org.quic.camera.bafstats.stats"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v3, "-2145779712"

    aput-object v3, v0, v1

    if-eqz p1, :cond_949

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_949
    const/16 v1, 0xe2

    const-string v2, "org.quic.camera2.tuning.mode.TuningMode"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v3, "-2145714176"

    aput-object v3, v0, v1

    if-eqz p1, :cond_95e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_95e
    const/16 v1, 0xe4

    const-string v2, "org.quic.camera2.tuning.feature.Feature1Mode"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v3, "-2145648640"

    aput-object v3, v0, v1

    if-eqz p1, :cond_973

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_973
    const/16 v1, 0xe6

    const-string v2, "org.quic.camera2.tuning.feature.Feature2Mode"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v3, "-2145648639"

    aput-object v3, v0, v1

    if-eqz p1, :cond_988

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_988
    const/16 v1, 0xe8

    const-string v2, "org.quic.camera2.oemfdconfig.OEMFDConfig"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v3, "-2145583104"

    aput-object v3, v0, v1

    if-eqz p1, :cond_99d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_99d
    const/16 v1, 0xea

    const-string v2, "org.quic.camera2.oemfdresults.OEMFDResults"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v3, "-2145517568"

    aput-object v3, v0, v1

    if-eqz p1, :cond_9b2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b2
    const/16 v1, 0xec

    const-string v2, "org.quic.camera2.objectTrackingConfig.Enable"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v3, "-2145452032"

    aput-object v3, v0, v1

    if-eqz p1, :cond_9c7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c7
    const/16 v1, 0xee

    const-string v2, "org.quic.camera2.objectTrackingConfig.CmdTrigger"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v3, "-2145452031"

    aput-object v3, v0, v1

    if-eqz p1, :cond_9dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9dc
    const/16 v1, 0xf0

    const-string v2, "org.quic.camera2.objectTrackingConfig.RegisterROI"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v3, "-2145452030"

    aput-object v3, v0, v1

    if-eqz p1, :cond_9f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f1
    const/16 v1, 0xf2

    const-string v2, "org.quic.camera2.objectTrackingResults.TrackerStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v3, "-2145386496"

    aput-object v3, v0, v1

    if-eqz p1, :cond_a06

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a06
    const/16 v1, 0xf4

    const-string v2, "org.quic.camera2.objectTrackingResults.ResultROI"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v3, "-2145386495"

    aput-object v3, v0, v1

    if-eqz p1, :cond_a1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a1b
    const/16 v1, 0xf6

    const-string v2, "org.quic.camera2.objectTrackingResults.TrackerScore"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v3, "-2145386494"

    aput-object v3, v0, v1

    if-eqz p1, :cond_a30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a30
    const/16 v1, 0xf8

    const-string v2, "org.quic.camera2.ref.cropsize.RefCropSize"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v3, "-2145320960"

    aput-object v3, v0, v1

    if-eqz p1, :cond_a45

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a45
    const/16 v1, 0xfa

    const-string v2, "org.quic.camera2.ref.cropsize.DisableZoomCrop"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v3, "-2145320959"

    aput-object v3, v0, v1

    if-eqz p1, :cond_a5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a5a
    const/16 v1, 0xfc

    const-string v2, "org.codeaurora.qcamera3.manualWB.color_temperature"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v3, "-2145255424"

    aput-object v3, v0, v1

    if-eqz p1, :cond_a6f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a6f
    const/16 v1, 0xfe

    const-string v2, "org.codeaurora.qcamera3.manualWB.color_temperature_range"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v3, "-2145255423"

    aput-object v3, v0, v1

    if-eqz p1, :cond_a84

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a84
    const/16 v1, 0x100

    const-string v2, "org.codeaurora.qcamera3.manualWB.gains"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v3, "-2145255422"

    aput-object v3, v0, v1

    if-eqz p1, :cond_a99

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a99
    const/16 v1, 0x102

    const-string v2, "org.codeaurora.qcamera3.manualWB.gains_range"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v3, "-2145255421"

    aput-object v3, v0, v1

    if-eqz p1, :cond_aae

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_aae
    const/16 v1, 0x104

    const-string v2, "org.codeaurora.qcamera3.manualWB.partial_mwb_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v3, "-2145255420"

    aput-object v3, v0, v1

    if-eqz p1, :cond_ac3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ac3
    const/16 v1, 0x106

    const-string v2, "org.codeaurora.qcamera3.temporal_denoise.enable"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v3, "-2145189888"

    aput-object v3, v0, v1

    if-eqz p1, :cond_ad8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad8
    const/16 v1, 0x108

    const-string v2, "org.codeaurora.qcamera3.temporal_denoise.process_type"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v3, "-2145189887"

    aput-object v3, v0, v1

    if-eqz p1, :cond_aed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_aed
    const/16 v1, 0x10a

    const-string v2, "org.quic.camera.ifecropinfo.ResidualCrop"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v3, "-2145124352"

    aput-object v3, v0, v1

    if-eqz p1, :cond_b02

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b02
    const/16 v1, 0x10c

    const-string v2, "org.quic.camera.ifecropinfo.AppliedCrop"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v3, "-2145124351"

    aput-object v3, v0, v1

    if-eqz p1, :cond_b17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b17
    const/16 v1, 0x10e

    const-string v2, "org.quic.camera.ifecropinfo.SensorIFEAppliedCrop"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v3, "-2145124350"

    aput-object v3, v0, v1

    if-eqz p1, :cond_b2c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b2c
    const/16 v1, 0x110

    const-string v2, "org.quic.camera.eis3enable.EISV3Enable"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v3, "-2145058816"

    aput-object v3, v0, v1

    if-eqz p1, :cond_b41

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b41
    const/16 v1, 0x112

    const-string v2, "org.quic.camera.streamTypePresent.preview"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v3, "-2144993280"

    aput-object v3, v0, v1

    if-eqz p1, :cond_b56

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b56
    const/16 v1, 0x114

    const-string v2, "org.quic.camera.eisrealtime.Enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v3, "-2144927744"

    aput-object v3, v0, v1

    if-eqz p1, :cond_b6b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b6b
    const/16 v1, 0x116

    const-string v2, "org.quic.camera.eisrealtime.RequestedMargin"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v3, "-2144927743"

    aput-object v3, v0, v1

    if-eqz p1, :cond_b80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b80
    const/16 v1, 0x118

    const-string v2, "org.quic.camera.eisrealtime.StabilizationMargins"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v3, "-2144927742"

    aput-object v3, v0, v1

    if-eqz p1, :cond_b95

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b95
    const/16 v1, 0x11a

    const-string v2, "org.quic.camera.eisrealtime.AdditionalCropOffset"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v3, "-2144927741"

    aput-object v3, v0, v1

    if-eqz p1, :cond_baa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_baa
    const/16 v1, 0x11c

    const-string v2, "org.quic.camera.eisrealtime.StabilizedOutputDims"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v3, "-2144927740"

    aput-object v3, v0, v1

    if-eqz p1, :cond_bbf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bbf
    const/16 v1, 0x11e

    const-string v2, "org.quic.camera.eisrealtime.MinimalTotalMargins"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v3, "-2144927739"

    aput-object v3, v0, v1

    if-eqz p1, :cond_bd4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bd4
    const/16 v1, 0x120

    const-string v2, "org.quic.camera.eislookahead.Enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v3, "-2144862208"

    aput-object v3, v0, v1

    if-eqz p1, :cond_be9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_be9
    const/16 v1, 0x122

    const-string v2, "org.quic.camera.eislookahead.FrameDelay"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v3, "-2144862207"

    aput-object v3, v0, v1

    if-eqz p1, :cond_bfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bfe
    const/16 v1, 0x124

    const-string v2, "org.quic.camera.eislookahead.RequestedMargin"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v3, "-2144862206"

    aput-object v3, v0, v1

    if-eqz p1, :cond_c13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c13
    const/16 v1, 0x126

    const-string v2, "org.quic.camera.eislookahead.StabilizationMargins"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v3, "-2144862205"

    aput-object v3, v0, v1

    if-eqz p1, :cond_c28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c28
    const/16 v1, 0x128

    const-string v2, "org.quic.camera.eislookahead.AdditionalCropOffset"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v3, "-2144862204"

    aput-object v3, v0, v1

    if-eqz p1, :cond_c3d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c3d
    const/16 v1, 0x12a

    const-string v2, "org.quic.camera.eislookahead.StabilizedOutputDims"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v3, "-2144862203"

    aput-object v3, v0, v1

    if-eqz p1, :cond_c52

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c52
    const/16 v1, 0x12c

    const-string v2, "org.quic.camera.eislookahead.MinimalTotalMargins"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v3, "-2144862202"

    aput-object v3, v0, v1

    if-eqz p1, :cond_c67

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c67
    const/16 v1, 0x12e

    const-string v2, "org.quic.camera.qtimer.timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v3, "-2144796672"

    aput-object v3, v0, v1

    if-eqz p1, :cond_c7c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c7c
    const/16 v1, 0x130

    const-string v2, "org.quic.camera.qtimer.OISdata"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v3, "-2144796671"

    aput-object v3, v0, v1

    if-eqz p1, :cond_c91

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c91
    const/16 v1, 0x132

    const-string v2, "org.codeaurora.qcamera3.stats.is_hdr_scene"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v3, "-2144731136"

    aput-object v3, v0, v1

    if-eqz p1, :cond_ca6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ca6
    const/16 v1, 0x134

    const-string v2, "org.codeaurora.qcamera3.stats.bsgc_available"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v3, "-2144731135"

    aput-object v3, v0, v1

    if-eqz p1, :cond_cbb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cbb
    const/16 v1, 0x136

    const-string v2, "org.codeaurora.qcamera3.stats.blink_detected"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v3, "-2144731134"

    aput-object v3, v0, v1

    if-eqz p1, :cond_cd0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cd0
    const/16 v1, 0x138

    const-string v2, "org.codeaurora.qcamera3.stats.blink_degree"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v3, "-2144731133"

    aput-object v3, v0, v1

    if-eqz p1, :cond_ce5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ce5
    const/16 v1, 0x13a

    const-string v2, "org.codeaurora.qcamera3.stats.smile_degree"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v3, "-2144731132"

    aput-object v3, v0, v1

    if-eqz p1, :cond_cfa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cfa
    const/16 v1, 0x13c

    const-string v2, "org.codeaurora.qcamera3.stats.smile_confidence"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v3, "-2144731131"

    aput-object v3, v0, v1

    if-eqz p1, :cond_d0f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d0f
    const/16 v1, 0x13e

    const-string v2, "org.codeaurora.qcamera3.stats.gaze_angle"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v3, "-2144731130"

    aput-object v3, v0, v1

    if-eqz p1, :cond_d24

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d24
    const/16 v1, 0x140

    const-string v2, "org.codeaurora.qcamera3.stats.gaze_direction"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v3, "-2144731129"

    aput-object v3, v0, v1

    if-eqz p1, :cond_d39

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d39
    const/16 v1, 0x142

    const-string v2, "org.codeaurora.qcamera3.stats.gaze_degree"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v3, "-2144731128"

    aput-object v3, v0, v1

    if-eqz p1, :cond_d4e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d4e
    const/16 v1, 0x144

    const-string v2, "org.codeaurora.qcamera3.stats.contours"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v3, "-2144731127"

    aput-object v3, v0, v1

    if-eqz p1, :cond_d63

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d63
    const/16 v1, 0x146

    const-string v2, "org.codeaurora.qcamera3.quadra_cfa.is_qcfa_sensor"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v3, "-2144665600"

    aput-object v3, v0, v1

    if-eqz p1, :cond_d78

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d78
    const/16 v1, 0x148

    const-string v2, "org.codeaurora.qcamera3.quadra_cfa.qcfa_dimension"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v3, "-2144665599"

    aput-object v3, v0, v1

    if-eqz p1, :cond_d8d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d8d
    const/16 v1, 0x14a

    const-string v2, "org.quic.camera.res_manager.enable"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v3, "-2144600064"

    aput-object v3, v0, v1

    if-eqz p1, :cond_da2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_da2
    const/16 v1, 0x14c

    const-string v2, "org.quic.camera.res_manager.res_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v3, "-2144600063"

    aput-object v3, v0, v1

    if-eqz p1, :cond_db7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_db7
    const/16 v1, 0x14e

    const-string v2, "org.quic.camera.resource.enable"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v3, "-2144534528"

    aput-object v3, v0, v1

    if-eqz p1, :cond_dcc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_dcc
    const/16 v1, 0x150

    const-string v2, "org.quic.camera.resource.res_type"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v3, "-2144534527"

    aput-object v3, v0, v1

    if-eqz p1, :cond_de1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_de1
    const/16 v1, 0x152

    const-string v2, "org.quic.camera.resource.skipacquire"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v3, "-2144534526"

    aput-object v3, v0, v1

    if-eqz p1, :cond_df6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_df6
    const/16 v1, 0x154

    const-string v2, "org.codeaurora.qcamera3.available_video_hdr_modes.video_hdr_modes"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v3, "-2144468992"

    aput-object v3, v0, v1

    if-eqz p1, :cond_e0b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e0b
    const/16 v1, 0x156

    const-string v2, "org.quic.camera.streamDimension.preview"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v3, "-2144403456"

    aput-object v3, v0, v1

    if-eqz p1, :cond_e20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e20
    const/16 v1, 0x158

    const-string v2, "org.quic.camera.streamDimension.video"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v3, "-2144403455"

    aput-object v3, v0, v1

    if-eqz p1, :cond_e35

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e35
    const/16 v1, 0x15a

    const-string v2, "org.quic.camera.streamDimension.snapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v3, "-2144403454"

    aput-object v3, v0, v1

    if-eqz p1, :cond_e4a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e4a
    const/16 v1, 0x15c

    const-string v2, "org.quic.camera.streamDimension.depth"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v3, "-2144403453"

    aput-object v3, v0, v1

    if-eqz p1, :cond_e5f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e5f
    const/16 v1, 0x15e

    const-string v2, "org.quic.camera2.sensormode.info.SensorModeTable"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v3, "-2144337920"

    aput-object v3, v0, v1

    if-eqz p1, :cond_e74

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e74
    const/16 v1, 0x160

    const-string v2, "org.quic.camera2.customhfrfps.info.CustomHFRFpsTable"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v3, "-2144272384"

    aput-object v3, v0, v1

    if-eqz p1, :cond_e89

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e89
    const/16 v1, 0x162

    const-string v2, "org.quic.camera2.streamBasedFPS.info.StreamBasedFPSTable"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v3, "-2144206848"

    aput-object v3, v0, v1

    if-eqz p1, :cond_e9e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e9e
    const/16 v1, 0x164

    const-string v2, "org.quic.camera2.streamBasedFPS.info.PreviewFPS"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v3, "-2144206847"

    aput-object v3, v0, v1

    if-eqz p1, :cond_eb3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_eb3
    const/16 v1, 0x166

    const-string v2, "org.quic.camera2.streamBasedFPS.info.VideoFPS"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v3, "-2144206846"

    aput-object v3, v0, v1

    if-eqz p1, :cond_ec8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ec8
    const/16 v1, 0x168

    const-string v2, "org.quic.camera.gammainfo.GammaInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v3, "-2144141312"

    aput-object v3, v0, v1

    if-eqz p1, :cond_edd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_edd
    const/16 v1, 0x16a

    const-string v2, "org.quic.camera.intermediateDimension.IntermediateDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v3, "-2144075776"

    aput-object v3, v0, v1

    if-eqz p1, :cond_ef2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ef2
    const/16 v1, 0x16c

    const-string v2, "org.quic.camera.recording.endOfStream"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v3, "-2144010240"

    aput-object v3, v0, v1

    if-eqz p1, :cond_f07

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f07
    const/16 v1, 0x16e

    const-string v2, "org.quic.camera.recording.endOfStreamRequestId"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v3, "-2144010239"

    aput-object v3, v0, v1

    if-eqz p1, :cond_f1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f1c
    const/16 v1, 0x170

    const-string v2, "org.quic.camera.recording.requestHasVideoBuffer"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v3, "-2144010238"

    aput-object v3, v0, v1

    if-eqz p1, :cond_f31

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f31
    const/16 v1, 0x172

    const-string v2, "org.quic.camera.manualExposure.disableFPSLimits"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v3, "-2143944704"

    aput-object v3, v0, v1

    if-eqz p1, :cond_f46

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f46
    const/16 v1, 0x174

    const-string v2, "org.quic.camera.EarlyPCRenable.EarlyPCRenable"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v3, "-2143879168"

    aput-object v3, v0, v1

    if-eqz p1, :cond_f5b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f5b
    const/16 v1, 0x176

    const-string v2, "org.quic.camera.BurstFPS.burstfps"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v3, "-2143813632"

    aput-object v3, v0, v1

    if-eqz p1, :cond_f70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f70
    const/16 v1, 0x178

    const-string v2, "org.quic.camera.CustomNoiseReduction.CustomNoiseReduction"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v3, "-2143748096"

    aput-object v3, v0, v1

    if-eqz p1, :cond_f85

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f85
    const/16 v1, 0x17a

    const-string v2, "org.quic.camera.SensorModeFS.isFastShutterModeSupported"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v3, "-2143682560"

    aput-object v3, v0, v1

    if-eqz p1, :cond_f9a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f9a
    const/16 v1, 0x17c

    const-string v2, "org.quic.camera.SensorModeFS.SensorModeFS"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v3, "-2143682559"

    aput-object v3, v0, v1

    if-eqz p1, :cond_faf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_faf
    const/16 v1, 0x17e

    const-string v2, "org.quic.camera.HWResourceInfo.IFEMaxLineWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v3, "-2143617024"

    aput-object v3, v0, v1

    if-eqz p1, :cond_fc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fc4
    const/16 v1, 0x180

    const-string v2, "org.quic.camera.HWResourceInfo.numIFEsforGivenTarget"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v3, "-2143617023"

    aput-object v3, v0, v1

    if-eqz p1, :cond_fd9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fd9
    const/16 v1, 0x182

    const-string v2, "org.quic.camera.HWResourceInfo.maxIFEsRequired"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v3, "-2143617022"

    aput-object v3, v0, v1

    if-eqz p1, :cond_fee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fee
    const/16 v1, 0x184

    const-string v2, "org.quic.camera.AECDataPublisherPresent.AECDataPublisherPresent"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v3, "-2143551488"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1003

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1003
    const/16 v1, 0x186

    const-string v2, "org.quic.camera.AECData.AECData"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v3, "-2143485952"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1018

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1018
    const/16 v1, 0x188

    const-string v2, "org.quic.camera.oemexifappdata.OEMEXIFAppData1"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v3, "-2143420416"

    aput-object v3, v0, v1

    if-eqz p1, :cond_102d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_102d
    const/16 v1, 0x18a

    const-string v2, "org.quic.camera.isDepthFocus.isDepthFocus"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v3, "-2143354880"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1042

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1042
    const/16 v1, 0x18c

    const-string v2, "org.codeaurora.qcamera3.logicalCameraType.logical_camera_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v3, "-2143289344"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1057

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1057
    const/16 v1, 0x18e

    const-string v2, "org.codeaurora.qcamera3.logicalCameraType.physicalCameraIds"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v3, "-2143289343"

    aput-object v3, v0, v1

    if-eqz p1, :cond_106c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_106c
    const/16 v1, 0x190

    const-string v2, "org.codeaurora.qcamera3.platformCapabilities.IPEICACapabilities"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v3, "-2143223808"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1081

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1081
    const/16 v1, 0x192

    const-string v2, "org.quic.camera.LCRRawformat.LCRRawformat"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v3, "-2143158272"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1096

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1096
    const/16 v1, 0x194

    const-string v2, "org.codeaurora.qcamera3.exposuretable.isValid"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v3, "-2143092736"

    aput-object v3, v0, v1

    if-eqz p1, :cond_10ab

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10ab
    const/16 v1, 0x196

    const-string v2, "org.codeaurora.qcamera3.exposuretable.sensitivityCorrectionFactor"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v3, "-2143092735"

    aput-object v3, v0, v1

    if-eqz p1, :cond_10c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10c0
    const/16 v1, 0x198

    const-string v2, "org.codeaurora.qcamera3.exposuretable.kneeCount"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v3, "-2143092734"

    aput-object v3, v0, v1

    if-eqz p1, :cond_10d5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10d5
    const/16 v1, 0x19a

    const-string v2, "org.codeaurora.qcamera3.exposuretable.gainKneeEntries"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v3, "-2143092733"

    aput-object v3, v0, v1

    if-eqz p1, :cond_10ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10ea
    const/16 v1, 0x19c

    const-string v2, "org.codeaurora.qcamera3.exposuretable.expTimeKneeEntries"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v3, "-2143092732"

    aput-object v3, v0, v1

    if-eqz p1, :cond_10ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10ff
    const/16 v1, 0x19e

    const-string v2, "org.codeaurora.qcamera3.exposuretable.incrementPriorityKneeEntries"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string v3, "-2143092731"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1114

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1114
    const/16 v1, 0x1a0

    const-string v2, "org.codeaurora.qcamera3.exposuretable.expIndexKneeEntries"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v3, "-2143092730"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1129

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1129
    const/16 v1, 0x1a2

    const-string v2, "org.codeaurora.qcamera3.exposuretable.thresAntiBandingMinExpTimePct"

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const-string v3, "-2143092729"

    aput-object v3, v0, v1

    if-eqz p1, :cond_113e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_113e
    const/16 v1, 0x1a4

    const-string v2, "org.codeaurora.qcamera3.meteringtable.meteringTable"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string v3, "-2143027200"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1153

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1153
    const/16 v1, 0x1a6

    const-string v2, "org.codeaurora.qcamera3.meteringtable.meteringTableSize"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string v3, "-2143027199"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1168

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1168
    const/16 v1, 0x1a8

    const-string v2, "org.codeaurora.qcamera3.adrc.disable"

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const-string v3, "-2142961664"

    aput-object v3, v0, v1

    if-eqz p1, :cond_117d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_117d
    const/16 v1, 0x1aa

    const-string v2, "org.codeaurora.qcamera3.sessionParameters.availableStreamMap"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v3, "-2142896128"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1192

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1192
    const/16 v1, 0x1ac

    const-string v2, "org.quic.camera.ltmDynamicContrast.ltmDynamicContrastStrength"

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const-string v3, "-2142830592"

    aput-object v3, v0, v1

    if-eqz p1, :cond_11a7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11a7
    const/16 v1, 0x1ae

    const-string v2, "org.quic.camera.ltmDynamicContrast.ltmDarkBoostStrength"

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const-string v3, "-2142830591"

    aput-object v3, v0, v1

    if-eqz p1, :cond_11bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11bc
    const/16 v1, 0x1b0

    const-string v2, "org.quic.camera.ltmDynamicContrast.ltmBrightSupressStrength"

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const-string v3, "-2142830590"

    aput-object v3, v0, v1

    if-eqz p1, :cond_11d1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11d1
    const/16 v1, 0x1b2

    const-string v2, "org.quic.camera.ltmDynamicContrast.ltmDynamicContrastStrengthRange"

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const-string v3, "-2142830589"

    aput-object v3, v0, v1

    if-eqz p1, :cond_11e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11e6
    const/16 v1, 0x1b4

    const-string v2, "org.quic.camera.ltmDynamicContrast.ltmDarkBoostStrengthRange"

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const-string v3, "-2142830588"

    aput-object v3, v0, v1

    if-eqz p1, :cond_11fb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11fb
    const/16 v1, 0x1b6

    const-string v2, "org.quic.camera.ltmDynamicContrast.ltmBrightSupressStrengthRange"

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const-string v3, "-2142830587"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1210

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1210
    const/16 v1, 0x1b8

    const-string v2, "org.quic.camera.ifecsidconfig.csidbinninginfo"

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const-string v3, "-2142765056"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1225

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1225
    const/16 v1, 0x1ba

    const-string v2, "org.quic.camera.cvpMetaData.CVPMetaData"

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const-string v3, "-2142699520"

    aput-object v3, v0, v1

    if-eqz p1, :cond_123a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_123a
    const/16 v1, 0x1bc

    const-string v2, "com.qti.camera.streamCropInfo.StreamCropInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const-string v3, "-2142633984"

    aput-object v3, v0, v1

    if-eqz p1, :cond_124f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_124f
    const/16 v1, 0x1be

    const-string v2, "com.qti.camera.streamCropInfo.RequestCropInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const-string v3, "-2142633983"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1264

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1264
    const/16 v1, 0x1c0

    const-string v2, "com.qti.camera.streamCropInfo.AllCropInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    const-string v3, "-2142633982"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1279

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1279
    const/16 v1, 0x1c2

    const-string v2, "com.qti.camera.streamCropInfo.EnableAllCropInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const-string v3, "-2142633981"

    aput-object v3, v0, v1

    if-eqz p1, :cond_128e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_128e
    const/16 v1, 0x1c4

    const-string v2, "com.qti.camera.streamMapMeta.StreamMap"

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const-string v3, "-2142568448"

    aput-object v3, v0, v1

    if-eqz p1, :cond_12a3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12a3
    const/16 v1, 0x1c6

    const-string v2, "org.quic.camera.geoLibStillFrameConfig.GeoLibStillFrameConfigPrefilter"

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    const-string v3, "-2142502912"

    aput-object v3, v0, v1

    if-eqz p1, :cond_12b8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12b8
    const/16 v1, 0x1c8

    const-string v2, "org.quic.camera.geoLibStillFrameConfig.GeoLibStillFrameConfigBlending"

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    const-string v3, "-2142502911"

    aput-object v3, v0, v1

    if-eqz p1, :cond_12cd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12cd
    const/16 v1, 0x1ca

    const-string v2, "org.quic.camera.geoLibStillFrameConfig.GeoLibStillFrameConfigPostFiler"

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    const-string v3, "-2142502910"

    aput-object v3, v0, v1

    if-eqz p1, :cond_12e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12e2
    const/16 v1, 0x1cc

    const-string v2, "org.quic.camera.snapshotOutputDimension.StillOutputDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    const-string v3, "-2142437376"

    aput-object v3, v0, v1

    if-eqz p1, :cond_12f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12f7
    const/16 v1, 0x1ce

    const-string v2, "org.quic.camera.snapshotOutputDimension.DisplayOutputDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    const-string v3, "-2142437375"

    aput-object v3, v0, v1

    if-eqz p1, :cond_130c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_130c
    const/16 v1, 0x1d0

    const-string v2, "org.codeaurora.qcamera3.facial_attr.smile_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    const-string v3, "-2142371840"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1321

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1321
    const/16 v1, 0x1d2

    const-string v2, "org.codeaurora.qcamera3.facial_attr.gaze_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    const-string v3, "-2142371839"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1336

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1336
    const/16 v1, 0x1d4

    const-string v2, "org.codeaurora.qcamera3.facial_attr.blink_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    const-string v3, "-2142371838"

    aput-object v3, v0, v1

    if-eqz p1, :cond_134b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_134b
    const/16 v1, 0x1d6

    const-string v2, "org.codeaurora.qcamera3.facial_attr.contour_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    const-string v3, "-2142371837"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1360

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1360
    const/16 v1, 0x1d8

    const-string v2, "org.quic.camera.scratchbufferdata.ScratchBufferData"

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    const-string v3, "-2142306304"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1375

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1375
    const/16 v1, 0x1da

    const-string v2, "org.quic.camera.ISPConfigData.numIFEsUsed"

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    const-string v3, "-2142240768"

    aput-object v3, v0, v1

    if-eqz p1, :cond_138a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_138a
    const/16 v1, 0x1dc

    const-string v2, "org.quic.camera.overrideIPEScaleProfile.OverrideIPEScaleProfile"

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    const-string v3, "-2142175232"

    aput-object v3, v0, v1

    if-eqz p1, :cond_139f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_139f
    const/16 v1, 0x1de

    const-string v2, "org.codeaurora.qcamera3.tmcusercontrol.isValidDarkBoostOffset"

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    const-string v3, "-2142109696"

    aput-object v3, v0, v1

    if-eqz p1, :cond_13b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13b4
    const/16 v1, 0x1e0

    const-string v2, "org.codeaurora.qcamera3.tmcusercontrol.darkBoostOffset"

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    const-string v3, "-2142109695"

    aput-object v3, v0, v1

    if-eqz p1, :cond_13c9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13c9
    const/16 v1, 0x1e2

    const-string v2, "org.codeaurora.qcamera3.tmcusercontrol.isValidFourthToneAnchor"

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    const-string v3, "-2142109694"

    aput-object v3, v0, v1

    if-eqz p1, :cond_13de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13de
    const/16 v1, 0x1e4

    const-string v2, "org.codeaurora.qcamera3.tmcusercontrol.fourthToneAnchor"

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    const-string v3, "-2142109693"

    aput-object v3, v0, v1

    if-eqz p1, :cond_13f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13f3
    const/16 v1, 0x1e6

    const-string v2, "org.quic.camera.overrideGPURotationUsecase.OverrideGPURotationUsecase"

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    const-string v3, "-2142044160"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1408

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1408
    const/16 v1, 0x1e8

    const-string v2, "org.codeaurora.qcamera3.saturation.use_saturation"

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    const-string v3, "-2141978624"

    aput-object v3, v0, v1

    if-eqz p1, :cond_141d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_141d
    const/16 v1, 0x1ea

    const-string v2, "org.codeaurora.qcamera3.saturation.range"

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    const-string v3, "-2141978623"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1432

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1432
    const/16 v1, 0x1ec

    const-string v2, "com.qti.sensorbps.mode_index"

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    const-string v3, "-2141913088"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1447

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1447
    const/16 v1, 0x1ee

    const-string v2, "com.qti.sensorbps.gain"

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    const-string v3, "-2141913087"

    aput-object v3, v0, v1

    if-eqz p1, :cond_145c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_145c
    const/16 v1, 0x1f0

    const-string v2, "org.codeaurora.qcamera3.hal_private_data.reprocess_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    const-string v3, "-2141847552"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1471

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1471
    const/16 v1, 0x1f2

    const-string v2, "org.codeaurora.qcamera3.hal_private_data.reprocess_data_blob"

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    const-string v3, "-2141847551"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1486

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1486
    const/16 v1, 0x1f4

    const-string v2, "org.codeaurora.qcamera3.hal_private_data.exif_debug_data_blob"

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    const-string v3, "-2141847550"

    aput-object v3, v0, v1

    if-eqz p1, :cond_149b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_149b
    const/16 v1, 0x1f6

    const-string v2, "org.codeaurora.qcamera3.hal_private_data.debug_image_dump"

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    const-string v3, "-2141847549"

    aput-object v3, v0, v1

    if-eqz p1, :cond_14b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14b0
    const/16 v1, 0x1f8

    const-string v2, "org.codeaurora.qcamera3.hal_private_data.debug_image_dump_mask"

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    const-string v3, "-2141847548"

    aput-object v3, v0, v1

    if-eqz p1, :cond_14c5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14c5
    const/16 v1, 0x1fa

    const-string v2, "com.qti.stats_control.dual_led_calibration_result"

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    const-string v3, "-2141782016"

    aput-object v3, v0, v1

    if-eqz p1, :cond_14da

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14da
    const/16 v1, 0x1fc

    const-string v2, "com.qti.stats_control.aec_settle"

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    const-string v3, "-2141782015"

    aput-object v3, v0, v1

    if-eqz p1, :cond_14ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14ef
    const/16 v1, 0x1fe

    const-string v2, "com.qti.stats_control.hdr_detected"

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    const-string v3, "-2141782014"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1504

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1504
    const/16 v1, 0x200

    const-string v2, "com.qti.stats_control.hdr_EV_Minus"

    aput-object v2, v0, v1

    const/16 v1, 0x201

    const-string v3, "-2141782013"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1519

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1519
    const/16 v1, 0x202

    const-string v2, "com.qti.stats_control.hdr_EV_Plus"

    aput-object v2, v0, v1

    const/16 v1, 0x203

    const-string v3, "-2141782012"

    aput-object v3, v0, v1

    if-eqz p1, :cond_152e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_152e
    const/16 v1, 0x204

    const-string v2, "com.qti.stats_control.night_EV_Minus"

    aput-object v2, v0, v1

    const/16 v1, 0x205

    const-string v3, "-2141782011"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1543

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1543
    const/16 v1, 0x206

    const-string v2, "com.qti.stats_control.night_EV_Plus_Hand"

    aput-object v2, v0, v1

    const/16 v1, 0x207

    const-string v3, "-2141782010"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1558

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1558
    const/16 v1, 0x208

    const-string v2, "com.qti.stats_control.night_EV_Plus_Tripod"

    aput-object v2, v0, v1

    const/16 v1, 0x209

    const-string v3, "-2141782009"

    aput-object v3, v0, v1

    if-eqz p1, :cond_156d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_156d
    const/16 v1, 0x20a

    const-string v2, "com.qti.stats_control.night_detected"

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    const-string v3, "-2141782008"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1582

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1582
    const/16 v1, 0x20c

    const-string v2, "com.qti.stats_control.motion_detected"

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    const-string v3, "-2141782007"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1597

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1597
    const/16 v1, 0x20e

    const-string v2, "com.qti.stats_control.drc_gain"

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    const-string v3, "-2141782006"

    aput-object v3, v0, v1

    if-eqz p1, :cond_15ac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15ac
    const/16 v1, 0x210

    const-string v2, "com.qti.stats_control.dark_boost_gain"

    aput-object v2, v0, v1

    const/16 v1, 0x211

    const-string v3, "-2141782005"

    aput-object v3, v0, v1

    if-eqz p1, :cond_15c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15c1
    const/16 v1, 0x212

    const-string v2, "com.qti.stats_control.is_BackLit_Face"

    aput-object v2, v0, v1

    const/16 v1, 0x213

    const-string v3, "-2141782004"

    aput-object v3, v0, v1

    if-eqz p1, :cond_15d6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15d6
    const/16 v1, 0x214

    const-string v2, "com.qti.stats_control.greenRatio"

    aput-object v2, v0, v1

    const/16 v1, 0x215

    const-string v3, "-2141782003"

    aput-object v3, v0, v1

    if-eqz p1, :cond_15eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15eb
    const/16 v1, 0x216

    const-string v2, "com.qti.stats_control.sgwRGRatio"

    aput-object v2, v0, v1

    const/16 v1, 0x217

    const-string v3, "-2141782002"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1600

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1600
    const/16 v1, 0x218

    const-string v2, "com.qti.stats_control.sgwBGRatio"

    aput-object v2, v0, v1

    const/16 v1, 0x219

    const-string v3, "-2141782001"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1615

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1615
    const/16 v1, 0x21a

    const-string v2, "com.qti.stats_control.aec_short_gain"

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    const-string v3, "-2141782000"

    aput-object v3, v0, v1

    if-eqz p1, :cond_162a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_162a
    const/16 v1, 0x21c

    const-string v2, "com.qti.stats_control.aec_long_gain"

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    const-string v3, "-2141781999"

    aput-object v3, v0, v1

    if-eqz p1, :cond_163f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_163f
    const/16 v1, 0x21e

    const-string v2, "com.qti.stats_control.aec_3hdr_ratio"

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    const-string v3, "-2141781998"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1654

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1654
    const/16 v1, 0x220

    const-string v2, "com.qti.stats_control.qbc_hdr_detected"

    aput-object v2, v0, v1

    const/16 v1, 0x221

    const-string v3, "-2141781997"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1669

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1669
    const/16 v1, 0x222

    const-string v2, "com.qti.stats_control.adrcBracket_detected"

    aput-object v2, v0, v1

    const/16 v1, 0x223

    const-string v3, "-2141781996"

    aput-object v3, v0, v1

    if-eqz p1, :cond_167e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_167e
    const/16 v1, 0x224

    const-string v2, "com.qti.stats_control.isSIDNeeded"

    aput-object v2, v0, v1

    const/16 v1, 0x225

    const-string v3, "-2141781995"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1693

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1693
    const/16 v1, 0x226

    const-string v2, "com.qti.stats_control.isSPNeeded"

    aput-object v2, v0, v1

    const/16 v1, 0x227

    const-string v3, "-2141781994"

    aput-object v3, v0, v1

    if-eqz p1, :cond_16a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16a8
    const/16 v1, 0x228

    const-string v2, "com.qti.stats_control.ColorTemperatureValue"

    aput-object v2, v0, v1

    const/16 v1, 0x229

    const-string v3, "-2141781993"

    aput-object v3, v0, v1

    if-eqz p1, :cond_16bd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16bd
    const/16 v1, 0x22a

    const-string v2, "com.qti.stats_control.CurFPS"

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    const-string v3, "-2141781992"

    aput-object v3, v0, v1

    if-eqz p1, :cond_16d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16d2
    const/16 v1, 0x22c

    const-string v2, "com.qti.stats_control.snapshotTimeHDR"

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    const-string v3, "-2141781991"

    aput-object v3, v0, v1

    if-eqz p1, :cond_16e7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16e7
    const/16 v1, 0x22e

    const-string v2, "com.qti.stats_control.snapshotTimeLLS"

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    const-string v3, "-2141781990"

    aput-object v3, v0, v1

    if-eqz p1, :cond_16fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16fc
    const/16 v1, 0x230

    const-string v2, "com.qti.stats_control.snapshotTimeSNH"

    aput-object v2, v0, v1

    const/16 v1, 0x231

    const-string v3, "-2141781989"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1711

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1711
    const/16 v1, 0x232

    const-string v2, "com.qti.stats_control.snapshotTimeSNT"

    aput-object v2, v0, v1

    const/16 v1, 0x233

    const-string v3, "-2141781988"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1726

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1726
    const/16 v1, 0x234

    const-string v2, "com.qti.stats_control.snapshotTimeSID"

    aput-object v2, v0, v1

    const/16 v1, 0x235

    const-string v3, "-2141781987"

    aput-object v3, v0, v1

    if-eqz p1, :cond_173b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_173b
    const/16 v1, 0x236

    const-string v2, "com.qti.stats_control.snapshotTimeLLB"

    aput-object v2, v0, v1

    const/16 v1, 0x237

    const-string v3, "-2141781986"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1750

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1750
    const/16 v1, 0x238

    const-string v2, "com.qti.stats_control.snapshotTimeATB"

    aput-object v2, v0, v1

    const/16 v1, 0x239

    const-string v3, "-2141781985"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1765

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1765
    const/16 v1, 0x23a

    const-string v2, "com.qti.stats_control.snapshotTimeMTB"

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    const-string v3, "-2141781984"

    aput-object v3, v0, v1

    if-eqz p1, :cond_177a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_177a
    const/16 v1, 0x23c

    const-string v2, "com.qti.stats_control.aec_face_num"

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    const-string v3, "-2141781983"

    aput-object v3, v0, v1

    if-eqz p1, :cond_178f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_178f
    const/16 v1, 0x23e

    const-string v2, "com.qti.stats_control.aec_face_max_size"

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    const-string v3, "-2141781982"

    aput-object v3, v0, v1

    if-eqz p1, :cond_17a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17a4
    const/16 v1, 0x240

    const-string v2, "com.qti.stats_control.long_Exposure_Snapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x241

    const-string v3, "-2141781981"

    aput-object v3, v0, v1

    if-eqz p1, :cond_17b9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17b9
    const/16 v1, 0x242

    const-string v2, "com.qti.stats_control.is_flash_snapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x243

    const-string v3, "-2141781980"

    aput-object v3, v0, v1

    if-eqz p1, :cond_17ce

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17ce
    const/16 v1, 0x244

    const-string v2, "com.qti.stats_control.is_lls_needed"

    aput-object v2, v0, v1

    const/16 v1, 0x245

    const-string v3, "-2141781979"

    aput-object v3, v0, v1

    if-eqz p1, :cond_17e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17e3
    const/16 v1, 0x246

    const-string v2, "com.qti.insensor_control.seamless_insensor_state"

    aput-object v2, v0, v1

    const/16 v1, 0x247

    const-string v3, "-2141716480"

    aput-object v3, v0, v1

    if-eqz p1, :cond_17f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17f8
    const/16 v1, 0x248

    const-string v2, "com.qti.izoom_control.state_izoom_snapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x249

    const-string v3, "-2141650944"

    aput-object v3, v0, v1

    if-eqz p1, :cond_180d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_180d
    const/16 v1, 0x24a

    const-string v2, "com.oneplus.node.memcpy.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    const-string v3, "-2141585408"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1822

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1822
    const/16 v1, 0x24c

    const-string v2, "com.oneplus.node.memcpy.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    const-string v3, "-2141585407"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1837

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1837
    const/16 v1, 0x24e

    const-string v2, "com.oneplus.node.memcpy.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    const-string v3, "-2141585406"

    aput-object v3, v0, v1

    if-eqz p1, :cond_184c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_184c
    const/16 v1, 0x250

    const-string v2, "com.oneplus.node.memcpy.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x251

    const-string v3, "-2141585405"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1861

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1861
    const/16 v1, 0x252

    const-string v2, "com.oneplus.node.omoji.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x253

    const-string v3, "-2141519872"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1876

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1876
    const/16 v1, 0x254

    const-string v2, "com.oneplus.node.omoji.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x255

    const-string v3, "-2141519871"

    aput-object v3, v0, v1

    if-eqz p1, :cond_188b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_188b
    const/16 v1, 0x256

    const-string v2, "com.oneplus.node.omoji.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x257

    const-string v3, "-2141519870"

    aput-object v3, v0, v1

    if-eqz p1, :cond_18a0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18a0
    const/16 v1, 0x258

    const-string v2, "com.oneplus.node.omoji.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x259

    const-string v3, "-2141519869"

    aput-object v3, v0, v1

    if-eqz p1, :cond_18b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18b5
    const/16 v1, 0x25a

    const-string v2, "com.oneplus.node.preview.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    const-string v3, "-2141454336"

    aput-object v3, v0, v1

    if-eqz p1, :cond_18ca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18ca
    const/16 v1, 0x25c

    const-string v2, "com.oneplus.node.preview.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x25d

    const-string v3, "-2141454335"

    aput-object v3, v0, v1

    if-eqz p1, :cond_18df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18df
    const/16 v1, 0x25e

    const-string v2, "com.oneplus.node.preview.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    const-string v3, "-2141454334"

    aput-object v3, v0, v1

    if-eqz p1, :cond_18f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18f4
    const/16 v1, 0x260

    const-string v2, "com.oneplus.node.preview.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x261

    const-string v3, "-2141454333"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1909

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1909
    const/16 v1, 0x262

    const-string v2, "com.oneplus.node.preview_nv.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x263

    const-string v3, "-2141388800"

    aput-object v3, v0, v1

    if-eqz p1, :cond_191e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_191e
    const/16 v1, 0x264

    const-string v2, "com.oneplus.node.preview_nv.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x265

    const-string v3, "-2141388799"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1933

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1933
    const/16 v1, 0x266

    const-string v2, "com.oneplus.node.preview_nv.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x267

    const-string v3, "-2141388798"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1948

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1948
    const/16 v1, 0x268

    const-string v2, "com.oneplus.node.preview_nv.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x269

    const-string v3, "-2141388797"

    aput-object v3, v0, v1

    if-eqz p1, :cond_195d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_195d
    const/16 v1, 0x26a

    const-string v2, "com.oneplus.node.preview_nv.ProcessDone"

    aput-object v2, v0, v1

    const/16 v1, 0x26b

    const-string v3, "-2141388796"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1972

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1972
    const/16 v1, 0x26c

    const-string v2, "com.oneplus.node.rtb.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x26d

    const-string v3, "-2141323264"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1987

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1987
    const/16 v1, 0x26e

    const-string v2, "com.oneplus.node.rtb.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x26f

    const-string v3, "-2141323263"

    aput-object v3, v0, v1

    if-eqz p1, :cond_199c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_199c
    const/16 v1, 0x270

    const-string v2, "com.oneplus.node.rtb.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x271

    const-string v3, "-2141323262"

    aput-object v3, v0, v1

    if-eqz p1, :cond_19b1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19b1
    const/16 v1, 0x272

    const-string v2, "com.oneplus.node.rtb.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x273

    const-string v3, "-2141323261"

    aput-object v3, v0, v1

    if-eqz p1, :cond_19c6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19c6
    const/16 v1, 0x274

    const-string v2, "com.oneplus.node.sat.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x275

    const-string v3, "-2141257728"

    aput-object v3, v0, v1

    if-eqz p1, :cond_19db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19db
    const/16 v1, 0x276

    const-string v2, "com.oneplus.node.sat.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x277

    const-string v3, "-2141257727"

    aput-object v3, v0, v1

    if-eqz p1, :cond_19f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19f0
    const/16 v1, 0x278

    const-string v2, "com.oneplus.node.sat.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x279

    const-string v3, "-2141257726"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1a05

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a05
    const/16 v1, 0x27a

    const-string v2, "com.oneplus.node.sat.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x27b

    const-string v3, "-2141257725"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1a1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a1a
    const/16 v1, 0x27c

    const-string v2, "com.oneplus.node.sat.OutputMetadataOpticalZoom"

    aput-object v2, v0, v1

    const/16 v1, 0x27d

    const-string v3, "-2141257724"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1a2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a2f
    const/16 v1, 0x27e

    const-string v2, "com.oneplus.node.sat.ChiNodeResidualCrop"

    aput-object v2, v0, v1

    const/16 v1, 0x27f

    const-string v3, "-2141257723"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1a44

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a44
    const/16 v1, 0x280

    const-string v2, "com.qti.node.customhw.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x281

    const-string v3, "-2141192192"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1a59

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a59
    const/16 v1, 0x282

    const-string v2, "com.qti.node.dummyrtb.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x283

    const-string v3, "-2141126656"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1a6e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a6e
    const/16 v1, 0x284

    const-string v2, "com.qti.node.dummyrtb.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x285

    const-string v3, "-2141126655"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1a83

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a83
    const/16 v1, 0x286

    const-string v2, "com.qti.node.dummyrtb.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x287

    const-string v3, "-2141126654"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1a98

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a98
    const/16 v1, 0x288

    const-string v2, "com.qti.node.dummyrtb.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x289

    const-string v3, "-2141126653"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1aad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1aad
    const/16 v1, 0x28a

    const-string v2, "com.qti.node.dummysat.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x28b

    const-string v3, "-2141061120"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1ac2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ac2
    const/16 v1, 0x28c

    const-string v2, "com.qti.node.dummysat.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x28d

    const-string v3, "-2141061119"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1ad7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ad7
    const/16 v1, 0x28e

    const-string v2, "com.qti.node.dummysat.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x28f

    const-string v3, "-2141061118"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1aec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1aec
    const/16 v1, 0x290

    const-string v2, "com.qti.node.dummysat.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x291

    const-string v3, "-2141061117"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1b01

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b01
    const/16 v1, 0x292

    const-string v2, "com.qti.node.eisv2.AlgoComplete"

    aput-object v2, v0, v1

    const/16 v1, 0x293

    const-string v3, "-2140995584"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1b16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b16
    const/16 v1, 0x294

    const-string v2, "com.qti.node.eisv3.PerspectiveGridTransform"

    aput-object v2, v0, v1

    const/16 v1, 0x295

    const-string v3, "-2140930048"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1b2b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b2b
    const/16 v1, 0x296

    const-string v2, "com.qti.node.fcv.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x297

    const-string v3, "-2140864512"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1b40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b40
    const/16 v1, 0x298

    const-string v2, "com.qti.node.fcv.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x299

    const-string v3, "-2140864511"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1b55

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b55
    const/16 v1, 0x29a

    const-string v2, "com.qti.node.fcv.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x29b

    const-string v3, "-2140864510"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1b6a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b6a
    const/16 v1, 0x29c

    const-string v2, "com.qti.node.fcv.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x29d

    const-string v3, "-2140864509"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1b7f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b7f
    const/16 v1, 0x29e

    const-string v2, "com.qti.node.gpu.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x29f

    const-string v3, "-2140798976"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1b94

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b94
    const/16 v1, 0x2a0

    const-string v2, "com.qti.node.gpu.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x2a1

    const-string v3, "-2140798975"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1ba9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ba9
    const/16 v1, 0x2a2

    const-string v2, "com.qti.node.gpu.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x2a3

    const-string v3, "-2140798974"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1bbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1bbe
    const/16 v1, 0x2a4

    const-string v2, "com.qti.node.gpu.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x2a5

    const-string v3, "-2140798973"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1bd3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1bd3
    const/16 v1, 0x2a6

    const-string v2, "com.qti.node.gpu.BypassCameraId"

    aput-object v2, v0, v1

    const/16 v1, 0x2a7

    const-string v3, "-2140798972"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1be8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1be8
    const/16 v1, 0x2a8

    const-string v2, "com.qti.node.memcpy.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x2a9

    const-string v3, "-2140733440"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1bfd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1bfd
    const/16 v1, 0x2aa

    const-string v2, "com.qti.node.memcpy.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x2ab

    const-string v3, "-2140733439"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1c12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c12
    const/16 v1, 0x2ac

    const-string v2, "com.qti.node.memcpy.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x2ad

    const-string v3, "-2140733438"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1c27

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c27
    const/16 v1, 0x2ae

    const-string v2, "com.qti.node.memcpy.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x2af

    const-string v3, "-2140733437"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1c3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c3c
    const/16 v1, 0x2b0

    const-string v2, "com.qti.node.remosaic.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x2b1

    const-string v3, "-2140667904"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1c51

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c51
    const/16 v1, 0x2b2

    const-string v2, "com.qti.node.remosaic.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x2b3

    const-string v3, "-2140667903"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1c66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c66
    const/16 v1, 0x2b4

    const-string v2, "com.qti.node.remosaic.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x2b5

    const-string v3, "-2140667902"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1c7b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c7b
    const/16 v1, 0x2b6

    const-string v2, "com.qti.node.remosaic.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x2b7

    const-string v3, "-2140667901"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1c90

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c90
    const/16 v1, 0x2b8

    const-string v2, "com.qti.node.dummystich.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x2b9

    const-string v3, "-2140602368"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1ca5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ca5
    const/16 v1, 0x2ba

    const-string v2, "com.qti.node.dummystich.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x2bb

    const-string v3, "-2140602367"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1cba

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1cba
    const/16 v1, 0x2bc

    const-string v2, "com.qti.node.dummystich.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x2bd

    const-string v3, "-2140602366"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1ccf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ccf
    const/16 v1, 0x2be

    const-string v2, "com.qti.node.dummystich.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x2bf

    const-string v3, "-2140602365"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1ce4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ce4
    const/16 v1, 0x2c0

    const-string v2, "com.oneplus.node.cfrsnapshot.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x2c1

    const-string v3, "-2140536832"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1cf9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1cf9
    const/16 v1, 0x2c2

    const-string v2, "com.oneplus.node.cfrsnapshot.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x2c3

    const-string v3, "-2140536831"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1d0e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d0e
    const/16 v1, 0x2c4

    const-string v2, "com.oneplus.node.cfrsnapshot.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x2c5

    const-string v3, "-2140536830"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1d23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d23
    const/16 v1, 0x2c6

    const-string v2, "com.oneplus.node.cfrsnapshot.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x2c7

    const-string v3, "-2140536829"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1d38

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d38
    const/16 v1, 0x2c8

    const-string v2, "com.oneplus.node.previewedge.SupportedFeature"

    aput-object v2, v0, v1

    const/16 v1, 0x2c9

    const-string v3, "-2140471296"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1d4d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d4d
    const/16 v1, 0x2ca

    const-string v2, "com.oneplus.node.previewedge.CurrentMode"

    aput-object v2, v0, v1

    const/16 v1, 0x2cb

    const-string v3, "-2140471295"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1d62

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d62
    const/16 v1, 0x2cc

    const-string v2, "com.oneplus.node.previewedge.ProcessedFrameNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x2cd

    const-string v3, "-2140471294"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1d77

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d77
    const/16 v1, 0x2ce

    const-string v2, "com.oneplus.node.previewedge.FrameDimension"

    aput-object v2, v0, v1

    const/16 v1, 0x2cf

    const-string v3, "-2140471293"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1d8c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d8c
    const/16 v1, 0x2d0

    const-string v2, "com.qti.stats.af.horiCountTag"

    aput-object v2, v0, v1

    const/16 v1, 0x2d1

    const-string v3, "-2140405760"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1da1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1da1
    const/16 v1, 0x2d2

    const-string v2, "com.qti.stats.af.vertCountTag"

    aput-object v2, v0, v1

    const/16 v1, 0x2d3

    const-string v3, "-2140405759"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1db6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1db6
    const/16 v1, 0x2d4

    const-string v2, "com.qti.stats.af.widthRegionTag"

    aput-object v2, v0, v1

    const/16 v1, 0x2d5

    const-string v3, "-2140405758"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1dcb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1dcb
    const/16 v1, 0x2d6

    const-string v2, "com.qti.stats.af.heightRegionTag"

    aput-object v2, v0, v1

    const/16 v1, 0x2d7

    const-string v3, "-2140405757"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1de0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1de0
    const/16 v1, 0x2d8

    const-string v2, "com.qti.stats.af.horiOffsetTag"

    aput-object v2, v0, v1

    const/16 v1, 0x2d9

    const-string v3, "-2140405756"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1df5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1df5
    const/16 v1, 0x2da

    const-string v2, "com.qti.stats.af.vertOffsetTag"

    aput-object v2, v0, v1

    const/16 v1, 0x2db

    const-string v3, "-2140405755"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1e0a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e0a
    const/16 v1, 0x2dc

    const-string v2, "com.qti.stats.af.ConfidenceMapTag"

    aput-object v2, v0, v1

    const/16 v1, 0x2dd

    const-string v3, "-2140405754"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1e1f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e1f
    const/16 v1, 0x2de

    const-string v2, "com.qti.stats.af.DistanceMapTag"

    aput-object v2, v0, v1

    const/16 v1, 0x2df

    const-string v3, "-2140405753"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1e34

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e34
    const/16 v1, 0x2e0

    const-string v2, "com.qti.stats.af.AFSelectionMapTag"

    aput-object v2, v0, v1

    const/16 v1, 0x2e1

    const-string v3, "-2140405752"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1e49

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e49
    const/16 v1, 0x2e2

    const-string v2, "com.qti.stats.af.DefocusMapTag"

    aput-object v2, v0, v1

    const/16 v1, 0x2e3

    const-string v3, "-2140405751"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1e5e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e5e
    const/16 v1, 0x2e4

    const-string v2, "com.qti.stats.awbwrapper.AWBGains"

    aput-object v2, v0, v1

    const/16 v1, 0x2e5

    const-string v3, "-2140340224"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1e73

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e73
    const/16 v1, 0x2e6

    const-string v2, "com.qti.stats.awbwrapper.AWBCCT"

    aput-object v2, v0, v1

    const/16 v1, 0x2e7

    const-string v3, "-2140340223"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1e88

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e88
    const/16 v1, 0x2e8

    const-string v2, "com.qti.stats.pdlib.PDLibTag1"

    aput-object v2, v0, v1

    const/16 v1, 0x2e9

    const-string v3, "-2140274688"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1e9d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e9d
    const/16 v1, 0x2ea

    const-string v2, "com.qti.stats.pdlib.PDLibTag2"

    aput-object v2, v0, v1

    const/16 v1, 0x2eb

    const-string v3, "-2140274687"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1eb2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1eb2
    const/16 v1, 0x2ec

    const-string v2, "com.sonystatic.stats.pdlib.PDLibTag1"

    aput-object v2, v0, v1

    const/16 v1, 0x2ed

    const-string v3, "-2140209152"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1ec7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ec7
    const/16 v1, 0x2ee

    const-string v2, "com.sonystatic.stats.pdlib.PDLibTag2"

    aput-object v2, v0, v1

    const/16 v1, 0x2ef

    const-string v3, "-2140209151"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1edc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1edc
    const/16 v1, 0x2f0

    const-string v2, "com.qtistatic.stats.aec.VendorTag1"

    aput-object v2, v0, v1

    const/16 v1, 0x2f1

    const-string v3, "-2140143616"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1ef1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ef1
    const/16 v1, 0x2f2

    const-string v2, "com.qtistatic.stats.aec.VendorTag2"

    aput-object v2, v0, v1

    const/16 v1, 0x2f3

    const-string v3, "-2140143615"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1f06

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f06
    const/16 v1, 0x2f4

    const-string v2, "com.qtistatic.stats.af.AFAlgoTag1"

    aput-object v2, v0, v1

    const/16 v1, 0x2f5

    const-string v3, "-2140078080"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1f1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f1b
    const/16 v1, 0x2f6

    const-string v2, "com.qtistatic.stats.af.AFAlgoTag2"

    aput-object v2, v0, v1

    const/16 v1, 0x2f7

    const-string v3, "-2140078079"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1f30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f30
    const/16 v1, 0x2f8

    const-string v2, "com.qtistatic.stats.awb.AWBAlgoTag1"

    aput-object v2, v0, v1

    const/16 v1, 0x2f9

    const-string v3, "-2140012544"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1f45

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f45
    const/16 v1, 0x2fa

    const-string v2, "com.qtistatic.stats.awb.AWBAlgoTag2"

    aput-object v2, v0, v1

    const/16 v1, 0x2fb

    const-string v3, "-2140012543"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1f5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f5a
    const/16 v1, 0x2fc

    const-string v2, "com.qtistatic.stats.pdlib.PDLibTag1"

    aput-object v2, v0, v1

    const/16 v1, 0x2fd

    const-string v3, "-2139947008"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1f6f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f6f
    const/16 v1, 0x2fe

    const-string v2, "com.qtistatic.stats.pdlib.PDLibTag2"

    aput-object v2, v0, v1

    const/16 v1, 0x2ff

    const-string v3, "-2139947007"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1f84

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f84
    const/16 v1, 0x300

    const-string v2, "com.qti.chi.override.override_tag1"

    aput-object v2, v0, v1

    const/16 v1, 0x301

    const-string v3, "-2139881472"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1f99

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f99
    const/16 v1, 0x302

    const-string v2, "com.qti.chi.override.override_tag2"

    aput-object v2, v0, v1

    const/16 v1, 0x303

    const-string v3, "-2139881471"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1fae

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fae
    const/16 v1, 0x304

    const-string v2, "com.qti.chi.override.override_tag3"

    aput-object v2, v0, v1

    const/16 v1, 0x305

    const-string v3, "-2139881470"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1fc3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fc3
    const/16 v1, 0x306

    const-string v2, "com.qti.chi.override.override_tag4"

    aput-object v2, v0, v1

    const/16 v1, 0x307

    const-string v3, "-2139881469"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1fd8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fd8
    const/16 v1, 0x308

    const-string v2, "com.qti.chi.multicamerasensorconfig.sensorsyncmodeconfig"

    aput-object v2, v0, v1

    const/16 v1, 0x309

    const-string v3, "-2139815936"

    aput-object v3, v0, v1

    if-eqz p1, :cond_1fed

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fed
    const/16 v1, 0x30a

    const-string v2, "com.qti.chi.multicamerainputmetadata.InputMetadataOpticalZoom"

    aput-object v2, v0, v1

    const/16 v1, 0x30b

    const-string v3, "-2139750400"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2002
    const/16 v1, 0x30c

    const-string v2, "com.qti.chi.multicamerainputmetadata.InputMetadataBokeh"

    aput-object v2, v0, v1

    const/16 v1, 0x30d

    const-string v3, "-2139750399"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2017

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2017
    const/16 v1, 0x30e

    const-string v2, "com.qti.chi.multicameraoutputmetadata.OutputMetadataOpticalZoom"

    aput-object v2, v0, v1

    const/16 v1, 0x30f

    const-string v3, "-2139684864"

    aput-object v3, v0, v1

    if-eqz p1, :cond_202c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_202c
    const/16 v1, 0x310

    const-string v2, "com.qti.chi.multicameraoutputmetadata.OutputMetadataBokeh"

    aput-object v2, v0, v1

    const/16 v1, 0x311

    const-string v3, "-2139684863"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2041

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2041
    const/16 v1, 0x312

    const-string v2, "com.qti.chi.multicamerainfo.MultiCameraIds"

    aput-object v2, v0, v1

    const/16 v1, 0x313

    const-string v3, "-2139619328"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2056

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2056
    const/16 v1, 0x314

    const-string v2, "com.qti.chi.multicamerainfo.MasterCamera"

    aput-object v2, v0, v1

    const/16 v1, 0x315

    const-string v3, "-2139619327"

    aput-object v3, v0, v1

    if-eqz p1, :cond_206b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_206b
    const/16 v1, 0x316

    const-string v2, "com.qti.chi.multicamerainfo.LowPowerMode"

    aput-object v2, v0, v1

    const/16 v1, 0x317

    const-string v3, "-2139619326"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2080

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2080
    const/16 v1, 0x318

    const-string v2, "com.qti.chi.multicamerainfo.SyncMode"

    aput-object v2, v0, v1

    const/16 v1, 0x319

    const-string v3, "-2139619325"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2095

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2095
    const/16 v1, 0x31a

    const-string v2, "com.qti.chi.multicamerainfo.IsMultiCameraUsecase"

    aput-object v2, v0, v1

    const/16 v1, 0x31b

    const-string v3, "-2139619324"

    aput-object v3, v0, v1

    if-eqz p1, :cond_20aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20aa
    const/16 v1, 0x31c

    const-string v2, "com.qti.cropregions.crop_regions"

    aput-object v2, v0, v1

    const/16 v1, 0x31d

    const-string v3, "-2139553792"

    aput-object v3, v0, v1

    if-eqz p1, :cond_20bf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20bf
    const/16 v1, 0x31e

    const-string v2, "com.qti.cropregions.ChiNodeResidualCrop"

    aput-object v2, v0, v1

    const/16 v1, 0x31f

    const-string v3, "-2139553791"

    aput-object v3, v0, v1

    if-eqz p1, :cond_20d4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20d4
    const/16 v1, 0x320

    const-string v2, "com.qti.chi.statsaec.AecLux"

    aput-object v2, v0, v1

    const/16 v1, 0x321

    const-string v3, "-2139488256"

    aput-object v3, v0, v1

    if-eqz p1, :cond_20e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20e9
    const/16 v1, 0x322

    const-string v2, "com.qti.chi.statsSkip.skipFrame"

    aput-object v2, v0, v1

    const/16 v1, 0x323

    const-string v3, "-2139422720"

    aput-object v3, v0, v1

    if-eqz p1, :cond_20fe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20fe
    const/16 v1, 0x324

    const-string v2, "com.qti.chi.metadataOwnerInfo.MetadataOwner"

    aput-object v2, v0, v1

    const/16 v1, 0x325

    const-string v3, "-2139357184"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2113

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2113
    const/16 v1, 0x326

    const-string v2, "com.qti.chi.feature2RequestInfo.Feature2RequestInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x327

    const-string v3, "-2139291648"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2128

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2128
    const/16 v1, 0x328

    const-string v2, "com.qti.chi.feature2RequestInfo.Feature2MccResult"

    aput-object v2, v0, v1

    const/16 v1, 0x329

    const-string v3, "-2139291647"

    aput-object v3, v0, v1

    if-eqz p1, :cond_213d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_213d
    const/16 v1, 0x32a

    const-string v2, "com.qti.chi.cameraconfiguration.PhysicalCameraConfigs"

    aput-object v2, v0, v1

    const/16 v1, 0x32b

    const-string v3, "-2139226112"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2152

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2152
    const/16 v1, 0x32c

    const-string v2, "com.qti.chi.cameraconfiguration.PhysicalCameraInputConfig"

    aput-object v2, v0, v1

    const/16 v1, 0x32d

    const-string v3, "-2139226111"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2167

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2167
    const/16 v1, 0x32e

    const-string v2, "com.qti.chi.superslowmotionfrc.CaptureStart"

    aput-object v2, v0, v1

    const/16 v1, 0x32f

    const-string v3, "-2139160576"

    aput-object v3, v0, v1

    if-eqz p1, :cond_217c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_217c
    const/16 v1, 0x330

    const-string v2, "com.qti.chi.superslowmotionfrc.CaptureComplete"

    aput-object v2, v0, v1

    const/16 v1, 0x331

    const-string v3, "-2139160575"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2191

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2191
    const/16 v1, 0x332

    const-string v2, "com.qti.chi.superslowmotionfrc.ProcessingComplete"

    aput-object v2, v0, v1

    const/16 v1, 0x333

    const-string v3, "-2139160574"

    aput-object v3, v0, v1

    if-eqz p1, :cond_21a6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21a6
    const/16 v1, 0x334

    const-string v2, "com.qti.chi.superslowmotionfrc.InterpolationFactor"

    aput-object v2, v0, v1

    const/16 v1, 0x335

    const-string v3, "-2139160573"

    aput-object v3, v0, v1

    if-eqz p1, :cond_21bb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21bb
    const/16 v1, 0x336

    const-string v2, "com.oplus.packageName"

    aput-object v2, v0, v1

    const/16 v1, 0x337

    const-string v3, "-2139095040"

    aput-object v3, v0, v1

    if-eqz p1, :cond_21d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21d0
    const/16 v1, 0x338

    const-string v2, "com.oplus.omoji.init"

    aput-object v2, v0, v1

    const/16 v1, 0x339

    const-string v3, "-2139095039"

    aput-object v3, v0, v1

    if-eqz p1, :cond_21e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21e5
    const/16 v1, 0x33a

    const-string v2, "com.oplus.omoji.json.info"

    aput-object v2, v0, v1

    const/16 v1, 0x33b

    const-string v3, "-2139029504"

    aput-object v3, v0, v1

    if-eqz p1, :cond_21fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21fa
    const/16 v1, 0x33c

    const-string v2, "com.qti.chi.rawinfo.IdealRaw"

    aput-object v2, v0, v1

    const/16 v1, 0x33d

    const-string v3, "-2138963968"

    aput-object v3, v0, v1

    if-eqz p1, :cond_220f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_220f
    const/16 v1, 0x33e

    const-string v2, "com.qti.chi.rawinfo.CameraId"

    aput-object v2, v0, v1

    const/16 v1, 0x33f

    const-string v3, "-2138963967"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2224

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2224
    const/16 v1, 0x340

    const-string v2, "com.qti.chi.rawinfo.PipelineId"

    aput-object v2, v0, v1

    const/16 v1, 0x341

    const-string v3, "-2138963966"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2239

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2239
    const/16 v1, 0x342

    const-string v2, "com.oneplus.camera2.staticMeta.LogicalCameraInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x343

    const-string v3, "-2138898432"

    aput-object v3, v0, v1

    if-eqz p1, :cond_224e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_224e
    const/16 v1, 0x344

    const-string v2, "com.oneplus.camera2.staticMeta.DefaultFaceBeautyLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x345

    const-string v3, "-2138898431"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2263

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2263
    const/16 v1, 0x346

    const-string v2, "com.oneplus.camera2.staticMeta.DefaultBokehFaceBeautyLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x347

    const-string v3, "-2138898430"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2278

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2278
    const/16 v1, 0x348

    const-string v2, "com.oneplus.camera2.staticMeta.MaxFaceBeautyLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x349

    const-string v3, "-2138898429"

    aput-object v3, v0, v1

    if-eqz p1, :cond_228d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_228d
    const/16 v1, 0x34a

    const-string v2, "com.oneplus.camera2.staticMeta.MaxBokehFaceBeautyLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x34b

    const-string v3, "-2138898428"

    aput-object v3, v0, v1

    if-eqz p1, :cond_22a2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22a2
    const/16 v1, 0x34c

    const-string v2, "com.oneplus.camera2.staticMeta.availableMinDigitalZoom"

    aput-object v2, v0, v1

    const/16 v1, 0x34d

    const-string v3, "-2138898427"

    aput-object v3, v0, v1

    if-eqz p1, :cond_22b7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22b7
    const/16 v1, 0x34e

    const-string v2, "com.oneplus.camera2.staticMeta.MultiJpegPicturesSizes"

    aput-object v2, v0, v1

    const/16 v1, 0x34f

    const-string v3, "-2138898426"

    aput-object v3, v0, v1

    if-eqz p1, :cond_22cc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22cc
    const/16 v1, 0x350

    const-string v2, "com.oneplus.camera2.staticMeta.MultiJpegZoomTele"

    aput-object v2, v0, v1

    const/16 v1, 0x351

    const-string v3, "-2138898425"

    aput-object v3, v0, v1

    if-eqz p1, :cond_22e1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22e1
    const/16 v1, 0x352

    const-string v2, "com.oneplus.camera2.staticMeta.IsMacroSupported"

    aput-object v2, v0, v1

    const/16 v1, 0x353

    const-string v3, "-2138898424"

    aput-object v3, v0, v1

    if-eqz p1, :cond_22f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22f6
    const/16 v1, 0x354

    const-string v2, "com.oneplus.camera2.staticMeta.SingleNightRawSize"

    aput-object v2, v0, v1

    const/16 v1, 0x355

    const-string v3, "-2138898423"

    aput-object v3, v0, v1

    if-eqz p1, :cond_230b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_230b
    const/16 v1, 0x356

    const-string v2, "com.oneplus.camera2.staticMeta.UltraWideInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x357

    const-string v3, "-2138898422"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2320

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2320
    const/16 v1, 0x358

    const-string v2, "com.oneplus.camera2.staticMeta.bokeh.dual.calibration"

    aput-object v2, v0, v1

    const/16 v1, 0x359

    const-string v3, "-2138898421"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2335

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2335
    const/16 v1, 0x35a

    const-string v2, "com.oneplus.camera2.staticMeta.PDC.algo.calibration"

    aput-object v2, v0, v1

    const/16 v1, 0x35b

    const-string v3, "-2138898420"

    aput-object v3, v0, v1

    if-eqz p1, :cond_234a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_234a
    const/16 v1, 0x35c

    const-string v2, "com.oneplus.camera2.staticMeta.bokeh.picture.size"

    aput-object v2, v0, v1

    const/16 v1, 0x35d

    const-string v3, "-2138898419"

    aput-object v3, v0, v1

    if-eqz p1, :cond_235f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_235f
    const/16 v1, 0x35e

    const-string v2, "com.oneplus.camera2.staticMeta.IsSuperNightSupported"

    aput-object v2, v0, v1

    const/16 v1, 0x35f

    const-string v3, "-2138898418"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2374

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2374
    const/16 v1, 0x360

    const-string v2, "com.oneplus.camera2.staticMeta.ColorTemperature"

    aput-object v2, v0, v1

    const/16 v1, 0x361

    const-string v3, "-2138898417"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2389

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2389
    const/16 v1, 0x362

    const-string v2, "com.oneplus.camera2.staticMeta.ProFullInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x363

    const-string v3, "-2138898416"

    aput-object v3, v0, v1

    if-eqz p1, :cond_239e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_239e
    const/16 v1, 0x364

    const-string v2, "com.oneplus.camera2.staticMeta.LLHDRLuxIdxTrigger"

    aput-object v2, v0, v1

    const/16 v1, 0x365

    const-string v3, "-2138898415"

    aput-object v3, v0, v1

    if-eqz p1, :cond_23b3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23b3
    const/16 v1, 0x366

    const-string v2, "com.oneplus.camera2.staticMeta.SuperNightLuxIdxTrigger"

    aput-object v2, v0, v1

    const/16 v1, 0x367

    const-string v3, "-2138898414"

    aput-object v3, v0, v1

    if-eqz p1, :cond_23c8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23c8
    const/16 v1, 0x368

    const-string v2, "com.oneplus.camera2.staticMeta.BurstJpegSupported"

    aput-object v2, v0, v1

    const/16 v1, 0x369

    const-string v3, "-2138898413"

    aput-object v3, v0, v1

    if-eqz p1, :cond_23dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23dd
    const/16 v1, 0x36a

    const-string v2, "com.oneplus.camera2.staticMeta.SATVideoMaxDigitalZoom"

    aput-object v2, v0, v1

    const/16 v1, 0x36b

    const-string v3, "-2138898412"

    aput-object v3, v0, v1

    if-eqz p1, :cond_23f2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23f2
    const/16 v1, 0x36c

    const-string v2, "com.oneplus.camera2.staticMeta.SATVideo4K60MaxDigitalZoom"

    aput-object v2, v0, v1

    const/16 v1, 0x36d

    const-string v3, "-2138898411"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2407

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2407
    const/16 v1, 0x36e

    const-string v2, "com.oneplus.camera2.staticMeta.IsQBCHDRVideoSupported"

    aput-object v2, v0, v1

    const/16 v1, 0x36f

    const-string v3, "-2138898410"

    aput-object v3, v0, v1

    if-eqz p1, :cond_241c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_241c
    const/16 v1, 0x370

    const-string v2, "com.oneplus.camera2.staticMeta.isSupportVideoWithRtYuv"

    aput-object v2, v0, v1

    const/16 v1, 0x371

    const-string v3, "-2138898409"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2431

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2431
    const/16 v1, 0x372

    const-string v2, "com.oneplus.camera2.staticMeta.SensorChipName"

    aput-object v2, v0, v1

    const/16 v1, 0x373

    const-string v3, "-2138898408"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2446

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2446
    const/16 v1, 0x374

    const-string v2, "com.oneplus.camera2.staticMeta.IsSupportUpscale4KSize"

    aput-object v2, v0, v1

    const/16 v1, 0x375

    const-string v3, "-2138898407"

    aput-object v3, v0, v1

    if-eqz p1, :cond_245b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_245b
    const/16 v1, 0x376

    const-string v2, "com.oneplus.camera2.staticMeta.IsAutoNightSupported"

    aput-object v2, v0, v1

    const/16 v1, 0x377

    const-string v3, "-2138898406"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2470

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2470
    const/16 v1, 0x378

    const-string v2, "com.oneplus.camera2.staticMeta.IsJPEGUpscale2x2Supported"

    aput-object v2, v0, v1

    const/16 v1, 0x379

    const-string v3, "-2138898405"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2485

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2485
    const/16 v1, 0x37a

    const-string v2, "com.oneplus.camera2.staticMeta.IsFaceBeautySupported"

    aput-object v2, v0, v1

    const/16 v1, 0x37b

    const-string v3, "-2138898404"

    aput-object v3, v0, v1

    if-eqz p1, :cond_249a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_249a
    const/16 v1, 0x37c

    const-string v2, "com.oneplus.camera2.staticMeta.isDynamicPictureSizeSupported"

    aput-object v2, v0, v1

    const/16 v1, 0x37d

    const-string v3, "-2138898403"

    aput-object v3, v0, v1

    if-eqz p1, :cond_24af

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24af
    const/16 v1, 0x37e

    const-string v2, "com.oneplus.camera2.staticMeta.HdrVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x37f

    const-string v3, "-2138898402"

    aput-object v3, v0, v1

    if-eqz p1, :cond_24c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24c4
    const/16 v1, 0x380

    const-string v2, "com.oplus.staticMeta.ModuleQRcode"

    aput-object v2, v0, v1

    const/16 v1, 0x381

    const-string v3, "-2138832896"

    aput-object v3, v0, v1

    if-eqz p1, :cond_24d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24d9
    const/16 v1, 0x382

    const-string v2, "com.oneplus.camera2.metadata.enable_AutoHDR"

    aput-object v2, v0, v1

    const/16 v1, 0x383

    const-string v3, "-2138767360"

    aput-object v3, v0, v1

    if-eqz p1, :cond_24ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24ee
    const/16 v1, 0x384

    const-string v2, "com.oneplus.camera2.metadata.enable_Mirror"

    aput-object v2, v0, v1

    const/16 v1, 0x385

    const-string v3, "-2138767359"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2503

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2503
    const/16 v1, 0x386

    const-string v2, "com.oneplus.camera2.metadata.SceneMode"

    aput-object v2, v0, v1

    const/16 v1, 0x387

    const-string v3, "-2138767358"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2518

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2518
    const/16 v1, 0x388

    const-string v2, "com.oneplus.camera2.metadata.BracketMode"

    aput-object v2, v0, v1

    const/16 v1, 0x389

    const-string v3, "-2138767357"

    aput-object v3, v0, v1

    if-eqz p1, :cond_252d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_252d
    const/16 v1, 0x38a

    const-string v2, "com.oneplus.camera2.metadata.FaceBeautyLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x38b

    const-string v3, "-2138767356"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2542

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2542
    const/16 v1, 0x38c

    const-string v2, "com.oneplus.camera2.metadata.EnableFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x38d

    const-string v3, "-2138767355"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2557

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2557
    const/16 v1, 0x38e

    const-string v2, "com.oneplus.camera2.metadata.FilterType"

    aput-object v2, v0, v1

    const/16 v1, 0x38f

    const-string v3, "-2138767354"

    aput-object v3, v0, v1

    if-eqz p1, :cond_256c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_256c
    const/16 v1, 0x390

    const-string v2, "com.oneplus.camera2.metadata.OutputMetadataRtbMsg"

    aput-object v2, v0, v1

    const/16 v1, 0x391

    const-string v3, "-2138767353"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2581

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2581
    const/16 v1, 0x392

    const-string v2, "com.oneplus.camera2.metadata.bokehCalibration"

    aput-object v2, v0, v1

    const/16 v1, 0x393

    const-string v3, "-2138767352"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2596

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2596
    const/16 v1, 0x394

    const-string v2, "com.oneplus.camera2.metadata.gyroFromAP"

    aput-object v2, v0, v1

    const/16 v1, 0x395

    const-string v3, "-2138767351"

    aput-object v3, v0, v1

    if-eqz p1, :cond_25ab

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25ab
    const/16 v1, 0x396

    const-string v2, "com.oneplus.camera2.metadata.SensorName"

    aput-object v2, v0, v1

    const/16 v1, 0x397

    const-string v3, "-2138767350"

    aput-object v3, v0, v1

    if-eqz p1, :cond_25c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25c0
    const/16 v1, 0x398

    const-string v2, "com.oneplus.camera2.metadata.SlaveName"

    aput-object v2, v0, v1

    const/16 v1, 0x399

    const-string v3, "-2138767349"

    aput-object v3, v0, v1

    if-eqz p1, :cond_25d5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25d5
    const/16 v1, 0x39a

    const-string v2, "com.oneplus.camera2.metadata.fScale"

    aput-object v2, v0, v1

    const/16 v1, 0x39b

    const-string v3, "-2138767348"

    aput-object v3, v0, v1

    if-eqz p1, :cond_25ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25ea
    const/16 v1, 0x39c

    const-string v2, "com.oneplus.camera2.metadata.IsMacroMode"

    aput-object v2, v0, v1

    const/16 v1, 0x39d

    const-string v3, "-2138767347"

    aput-object v3, v0, v1

    if-eqz p1, :cond_25ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25ff
    const/16 v1, 0x39e

    const-string v2, "com.oneplus.camera2.metadata.ZoomMode"

    aput-object v2, v0, v1

    const/16 v1, 0x39f

    const-string v3, "-2138767346"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2614

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2614
    const/16 v1, 0x3a0

    const-string v2, "com.oneplus.camera2.metadata.QCFAsnapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x3a1

    const-string v3, "-2138767345"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2629

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2629
    const/16 v1, 0x3a2

    const-string v2, "com.oneplus.camera2.metadata.MFSRFrameNum"

    aput-object v2, v0, v1

    const/16 v1, 0x3a3

    const-string v3, "-2138767344"

    aput-object v3, v0, v1

    if-eqz p1, :cond_263e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_263e
    const/16 v1, 0x3a4

    const-string v2, "com.oneplus.camera2.metadata.BokehFaceBeautyLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x3a5

    const-string v3, "-2138767343"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2653

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2653
    const/16 v1, 0x3a6

    const-string v2, "com.oneplus.camera2.metadata.HDRsnapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x3a7

    const-string v3, "-2138767342"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2668

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2668
    const/16 v1, 0x3a8

    const-string v2, "com.oneplus.camera2.metadata.af.focus.roi"

    aput-object v2, v0, v1

    const/16 v1, 0x3a9

    const-string v3, "-2138767341"

    aput-object v3, v0, v1

    if-eqz p1, :cond_267d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_267d
    const/16 v1, 0x3aa

    const-string v2, "com.oneplus.camera2.metadata.preview.orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x3ab

    const-string v3, "-2138767340"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2692

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2692
    const/16 v1, 0x3ac

    const-string v2, "com.oneplus.camera2.metadata.OISdata"

    aput-object v2, v0, v1

    const/16 v1, 0x3ad

    const-string v3, "-2138767339"

    aput-object v3, v0, v1

    if-eqz p1, :cond_26a7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26a7
    const/16 v1, 0x3ae

    const-string v2, "com.oneplus.camera2.metadata.tunning.stats.debug"

    aput-object v2, v0, v1

    const/16 v1, 0x3af

    const-string v3, "-2138767338"

    aput-object v3, v0, v1

    if-eqz p1, :cond_26bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26bc
    const/16 v1, 0x3b0

    const-string v2, "com.oneplus.camera2.metadata.aps.sat.snapshot.master.pipeline"

    aput-object v2, v0, v1

    const/16 v1, 0x3b1

    const-string v3, "-2138767337"

    aput-object v3, v0, v1

    if-eqz p1, :cond_26d1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26d1
    const/16 v1, 0x3b2

    const-string v2, "com.oneplus.camera2.metadata.IZOOMsnapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x3b3

    const-string v3, "-2138767336"

    aput-object v3, v0, v1

    if-eqz p1, :cond_26e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26e6
    const/16 v1, 0x3b4

    const-string v2, "com.oneplus.camera2.metadata.supernight.mode"

    aput-object v2, v0, v1

    const/16 v1, 0x3b5

    const-string v3, "-2138767335"

    aput-object v3, v0, v1

    if-eqz p1, :cond_26fb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26fb
    const/16 v1, 0x3b6

    const-string v2, "com.oneplus.camera2.metadata.portrait.bokeh.state"

    aput-object v2, v0, v1

    const/16 v1, 0x3b7

    const-string v3, "-2138767334"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2710
    const/16 v1, 0x3b8

    const-string v2, "com.oneplus.camera2.metadata.IsSuperNightMode"

    aput-object v2, v0, v1

    const/16 v1, 0x3b9

    const-string v3, "-2138767333"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2725

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2725
    const/16 v1, 0x3ba

    const-string v2, "com.oneplus.camera2.metadata.sensorModeIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x3bb

    const-string v3, "-2138767332"

    aput-object v3, v0, v1

    if-eqz p1, :cond_273a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_273a
    const/16 v1, 0x3bc

    const-string v2, "com.oneplus.camera2.metadata.sceneClassifyLabelID"

    aput-object v2, v0, v1

    const/16 v1, 0x3bd

    const-string v3, "-2138767331"

    aput-object v3, v0, v1

    if-eqz p1, :cond_274f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_274f
    const/16 v1, 0x3be

    const-string v2, "com.oneplus.camera2.metadata.sceneClassifyConfidenceLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x3bf

    const-string v3, "-2138767330"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2764

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2764
    const/16 v1, 0x3c0

    const-string v2, "com.oneplus.camera2.metadata.isQSTracking"

    aput-object v2, v0, v1

    const/16 v1, 0x3c1

    const-string v3, "-2138767329"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2779

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2779
    const/16 v1, 0x3c2

    const-string v2, "com.oneplus.camera2.metadata.TOF_Value"

    aput-object v2, v0, v1

    const/16 v1, 0x3c3

    const-string v3, "-2138767328"

    aput-object v3, v0, v1

    if-eqz p1, :cond_278e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_278e
    const/16 v1, 0x3c4

    const-string v2, "com.oneplus.camera2.metadata.OISmode"

    aput-object v2, v0, v1

    const/16 v1, 0x3c5

    const-string v3, "-2138767327"

    aput-object v3, v0, v1

    if-eqz p1, :cond_27a3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27a3
    const/16 v1, 0x3c6

    const-string v2, "com.oneplus.camera2.metadata.objectClassifyLabelID"

    aput-object v2, v0, v1

    const/16 v1, 0x3c7

    const-string v3, "-2138767326"

    aput-object v3, v0, v1

    if-eqz p1, :cond_27b8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27b8
    const/16 v1, 0x3c8

    const-string v2, "com.oneplus.camera2.metadata.objectClassifyROI"

    aput-object v2, v0, v1

    const/16 v1, 0x3c9

    const-string v3, "-2138767325"

    aput-object v3, v0, v1

    if-eqz p1, :cond_27cd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27cd
    const/16 v1, 0x3ca

    const-string v2, "com.oneplus.camera2.metadata.requestDateTime"

    aput-object v2, v0, v1

    const/16 v1, 0x3cb

    const-string v3, "-2138767324"

    aput-object v3, v0, v1

    if-eqz p1, :cond_27e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27e2
    const/16 v1, 0x3cc

    const-string v2, "com.oneplus.camera2.metadata.ADRCInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x3cd

    const-string v3, "-2138767323"

    aput-object v3, v0, v1

    if-eqz p1, :cond_27f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27f7
    const/16 v1, 0x3ce

    const-string v2, "com.oneplus.camera2.metadata.ZoomActiveCamera"

    aput-object v2, v0, v1

    const/16 v1, 0x3cf

    const-string v3, "-2138767322"

    aput-object v3, v0, v1

    if-eqz p1, :cond_280c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_280c
    const/16 v1, 0x3d0

    const-string v2, "com.oneplus.camera2.metadata.sensorID"

    aput-object v2, v0, v1

    const/16 v1, 0x3d1

    const-string v3, "-2138767321"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2821

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2821
    const/16 v1, 0x3d2

    const-string v2, "com.oneplus.camera2.metadata.EISSuperSteadyEnable"

    aput-object v2, v0, v1

    const/16 v1, 0x3d3

    const-string v3, "-2138767320"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2836

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2836
    const/16 v1, 0x3d4

    const-string v2, "com.oneplus.camera2.metadata.IsMacroSuggested"

    aput-object v2, v0, v1

    const/16 v1, 0x3d5

    const-string v3, "-2138767319"

    aput-object v3, v0, v1

    if-eqz p1, :cond_284b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_284b
    const/16 v1, 0x3d6

    const-string v2, "com.oneplus.camera2.metadata.IsSuperResolutionSelected"

    aput-object v2, v0, v1

    const/16 v1, 0x3d7

    const-string v3, "-2138767318"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2860

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2860
    const/16 v1, 0x3d8

    const-string v2, "com.oneplus.camera2.metadata.IsJPEGUpscale2x2"

    aput-object v2, v0, v1

    const/16 v1, 0x3d9

    const-string v3, "-2138767317"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2875

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2875
    const/16 v1, 0x3da

    const-string v2, "com.oneplus.camera2.metadata.SharpnessValue"

    aput-object v2, v0, v1

    const/16 v1, 0x3db

    const-string v3, "-2138767316"

    aput-object v3, v0, v1

    if-eqz p1, :cond_288a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_288a
    const/16 v1, 0x3dc

    const-string v2, "com.oneplus.camera2.metadata.RawCaptureRealTime"

    aput-object v2, v0, v1

    const/16 v1, 0x3dd

    const-string v3, "-2138767315"

    aput-object v3, v0, v1

    if-eqz p1, :cond_289f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_289f
    const/16 v1, 0x3de

    const-string v2, "com.oneplus.camera2.metadata.pf.colortemperature"

    aput-object v2, v0, v1

    const/16 v1, 0x3df

    const-string v3, "-2138767314"

    aput-object v3, v0, v1

    if-eqz p1, :cond_28b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28b4
    const/16 v1, 0x3e0

    const-string v2, "com.oneplus.camera2.metadata.EnableEdgeFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x3e1

    const-string v3, "-2138767313"

    aput-object v3, v0, v1

    if-eqz p1, :cond_28c9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28c9
    const/16 v1, 0x3e2

    const-string v2, "com.oneplus.camera2.metadata.IsDualOutputSnapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x3e3

    const-string v3, "-2138767312"

    aput-object v3, v0, v1

    if-eqz p1, :cond_28de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28de
    const/16 v1, 0x3e4

    const-string v2, "com.oneplus.camera2.metadata.NZSLSnapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x3e5

    const-string v3, "-2138767311"

    aput-object v3, v0, v1

    if-eqz p1, :cond_28f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28f3
    const/16 v1, 0x3e6

    const-string v2, "com.oneplus.camera2.metadata.SensorFPS"

    aput-object v2, v0, v1

    const/16 v1, 0x3e7

    const-string v3, "-2138767310"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2908

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2908
    const/16 v1, 0x3e8

    const-string v2, "com.oneplus.camera2.metadata.IRFilterLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x3e9

    const-string v3, "-2138767309"

    aput-object v3, v0, v1

    if-eqz p1, :cond_291d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_291d
    const/16 v1, 0x3ea

    const-string v2, "com.oneplus.camera2.metadata.ImageOpticalStabilizationOn"

    aput-object v2, v0, v1

    const/16 v1, 0x3eb

    const-string v3, "-2138767308"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2932

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2932
    const/16 v1, 0x3ec

    const-string v2, "com.oneplus.camera2.metadata.IsHdrReprocessing"

    aput-object v2, v0, v1

    const/16 v1, 0x3ed

    const-string v3, "-2138767307"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2947

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2947
    const/16 v1, 0x3ee

    const-string v2, "com.oneplus.camera2.metadata.Feature2MccResult"

    aput-object v2, v0, v1

    const/16 v1, 0x3ef

    const-string v3, "-2138767306"

    aput-object v3, v0, v1

    if-eqz p1, :cond_295c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_295c
    const/16 v1, 0x3f0

    const-string v2, "com.oneplus.camera2.metadata.EISVideoBokehEnable"

    aput-object v2, v0, v1

    const/16 v1, 0x3f1

    const-string v3, "-2138767305"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2971

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2971
    const/16 v1, 0x3f2

    const-string v2, "com.oneplus.camera2.metadata.VendorStreamConfigMode"

    aput-object v2, v0, v1

    const/16 v1, 0x3f3

    const-string v3, "-2138767304"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2986

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2986
    const/16 v1, 0x3f4

    const-string v2, "com.oneplus.camera2.metadata.EnableCFRFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x3f5

    const-string v3, "-2138767303"

    aput-object v3, v0, v1

    if-eqz p1, :cond_299b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_299b
    const/16 v1, 0x3f6

    const-string v2, "com.oneplus.camera2.metadata.VideoFilterEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x3f7

    const-string v3, "-2138767302"

    aput-object v3, v0, v1

    if-eqz p1, :cond_29b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29b0
    const/16 v1, 0x3f8

    const-string v2, "com.oneplus.camera2.metadata.IsSnapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x3f9

    const-string v3, "-2138767301"

    aput-object v3, v0, v1

    if-eqz p1, :cond_29c5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29c5
    const/16 v1, 0x3fa

    const-string v2, "com.oneplus.camera2.metadata.MultiShotCount"

    aput-object v2, v0, v1

    const/16 v1, 0x3fb

    const-string v3, "-2138767300"

    aput-object v3, v0, v1

    if-eqz p1, :cond_29da

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29da
    const/16 v1, 0x3fc

    const-string v2, "com.oneplus.camera2.metadata.CyberPunkGlitchSeed"

    aput-object v2, v0, v1

    const/16 v1, 0x3fd

    const-string v3, "-2138767299"

    aput-object v3, v0, v1

    if-eqz p1, :cond_29ef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29ef
    const/16 v1, 0x3fe

    const-string v2, "com.oneplus.camera2.metadata.CyberPunkEnableBloom"

    aput-object v2, v0, v1

    const/16 v1, 0x3ff

    const-string v3, "-2138767298"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2a04

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a04
    const/16 v1, 0x400

    const-string v2, "com.oneplus.camera2.metadata.LogicalCameraId"

    aput-object v2, v0, v1

    const/16 v1, 0x401

    const-string v3, "-2138767297"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2a19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a19
    const/16 v1, 0x402

    const-string v2, "com.oneplus.camera2.metadata.VideoFilterMode"

    aput-object v2, v0, v1

    const/16 v1, 0x403

    const-string v3, "-2138767296"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2a2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a2e
    const/16 v1, 0x404

    const-string v2, "com.oneplus.camera2.metadata.CountDownFlash"

    aput-object v2, v0, v1

    const/16 v1, 0x405

    const-string v3, "-2138767295"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2a43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a43
    const/16 v1, 0x406

    const-string v2, "com.oneplus.camera2.metadata.face.occlusion.info"

    aput-object v2, v0, v1

    const/16 v1, 0x407

    const-string v3, "-2138767294"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2a58

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a58
    const/16 v1, 0x408

    const-string v2, "com.oplus.is.sdk.camera.package"

    aput-object v2, v0, v1

    const/16 v1, 0x409

    const-string v3, "-2138701824"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2a6d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a6d
    const/16 v1, 0x40a

    const-string v2, "com.oplus.portrait.bokeh.state"

    aput-object v2, v0, v1

    const/16 v1, 0x40b

    const-string v3, "-2138701823"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2a82

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a82
    const/16 v1, 0x40c

    const-string v2, "com.oplus.supported.cameraid.type"

    aput-object v2, v0, v1

    const/16 v1, 0x40d

    const-string v3, "-2138701822"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2a97

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a97
    const/16 v1, 0x40e

    const-string v2, "com.oplus.mSensorName"

    aput-object v2, v0, v1

    const/16 v1, 0x40f

    const-string v3, "-2138701821"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2aac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2aac
    const/16 v1, 0x410

    const-string v2, "com.oplus.engineercamera.led.calibration.mode"

    aput-object v2, v0, v1

    const/16 v1, 0x411

    const-string v3, "-2138701820"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2ac1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2ac1
    const/16 v1, 0x412

    const-string v2, "com.oplus.engineercamera.led.calibration.result"

    aput-object v2, v0, v1

    const/16 v1, 0x413

    const-string v3, "-2138701819"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2ad6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2ad6
    const/16 v1, 0x414

    const-string v2, "com.oplus.custom.raw.size"

    aput-object v2, v0, v1

    const/16 v1, 0x415

    const-string v3, "-2138701818"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2aeb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2aeb
    const/16 v1, 0x416

    const-string v2, "com.oplus.engineercamera.jpeg.size"

    aput-object v2, v0, v1

    const/16 v1, 0x417

    const-string v3, "-2138701817"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2b00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b00
    const/16 v1, 0x418

    const-string v2, "com.oplus.opx.NZSLSnapshot"

    aput-object v2, v0, v1

    const/16 v1, 0x419

    const-string v3, "-2138701816"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2b15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b15
    const/16 v1, 0x41a

    const-string v2, "com.oplus.customization.control.led"

    aput-object v2, v0, v1

    const/16 v1, 0x41b

    const-string v3, "-2138701815"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2b2a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b2a
    const/16 v1, 0x41c

    const-string v2, "com.qti.chi.bpsrealtimecam.cameraRunningOnBPS"

    aput-object v2, v0, v1

    const/16 v1, 0x41d

    const-string v3, "-2138636288"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2b3f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b3f
    const/16 v1, 0x41e

    const-string v2, "com.qti.chi.ZSLSettings.ZSLTimeRange"

    aput-object v2, v0, v1

    const/16 v1, 0x41f

    const-string v3, "-2138570752"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2b54

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b54
    const/16 v1, 0x420

    const-string v2, "com.qti.chi.livePreview.enable"

    aput-object v2, v0, v1

    const/16 v1, 0x421

    const-string v3, "-2138505216"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2b69

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b69
    const/16 v1, 0x422

    const-string v2, "com.qti.chi.SensorModeControl.SensorModeControl"

    aput-object v2, v0, v1

    const/16 v1, 0x423

    const-string v3, "-2138439680"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2b7e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b7e
    const/16 v1, 0x424

    const-string v2, "com.qti.chi.MCSatRTCSLSession.record"

    aput-object v2, v0, v1

    const/16 v1, 0x425

    const-string v3, "-2138374144"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2b93

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b93
    const/16 v1, 0x426

    const-string v2, "com.qti.chi.MCSatRTCSLSession.access"

    aput-object v2, v0, v1

    const/16 v1, 0x427

    const-string v3, "-2138374143"

    aput-object v3, v0, v1

    if-eqz p1, :cond_2ba8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2ba8
    const-string v1, "Port8tVendorTags"

    const-string v2, "static vendor tag list, pairs: 532"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
