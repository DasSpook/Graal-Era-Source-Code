.class public final Lcom/quattroplay/GraalEra/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quattroplay/GraalEra/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FZImageZoom:[I

.field public static final FZImageZoom_src:I = 0x0

.field public static final FZTextView:[I

.field public static final FZTextView_isMandatory:I = 0x1

.field public static final FZTextView_useRegularFont:I = 0x0

.field public static final FZWheelSelecter:[I

.field public static final FZWheelSelecter_background:I = 0x2

.field public static final FZWheelSelecter_selectedColor:I = 0x0

.field public static final FZWheelSelecter_unselectedColor:I = 0x1

.field public static final com_facebook_friend_picker_fragment:[I

.field public static final com_facebook_friend_picker_fragment_multi_select:I = 0x0

.field public static final com_facebook_login_view:[I

.field public static final com_facebook_login_view_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_fetch_user_info:I = 0x1

.field public static final com_facebook_login_view_login_text:I = 0x2

.field public static final com_facebook_login_view_logout_text:I = 0x3

.field public static final com_facebook_picker_fragment:[I

.field public static final com_facebook_picker_fragment_done_button_background:I = 0x6

.field public static final com_facebook_picker_fragment_done_button_text:I = 0x4

.field public static final com_facebook_picker_fragment_extra_fields:I = 0x1

.field public static final com_facebook_picker_fragment_show_pictures:I = 0x0

.field public static final com_facebook_picker_fragment_show_title_bar:I = 0x2

.field public static final com_facebook_picker_fragment_title_bar_background:I = 0x5

.field public static final com_facebook_picker_fragment_title_text:I = 0x3

.field public static final com_facebook_place_picker_fragment:[I

.field public static final com_facebook_place_picker_fragment_radius_in_meters:I = 0x0

.field public static final com_facebook_place_picker_fragment_results_limit:I = 0x1

.field public static final com_facebook_place_picker_fragment_search_text:I = 0x2

.field public static final com_facebook_place_picker_fragment_show_search_box:I = 0x3

.field public static final com_facebook_profile_picture_view:[I

.field public static final com_facebook_profile_picture_view_is_cropped:I = 0x1

.field public static final com_facebook_profile_picture_view_preset_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 707
    new-array v0, v3, [I

    const v1, 0x7f010017

    aput v1, v0, v2

    sput-object v0, Lcom/quattroplay/GraalEra/R$styleable;->FZImageZoom:[I

    .line 732
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/quattroplay/GraalEra/R$styleable;->FZTextView:[I

    .line 777
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/quattroplay/GraalEra/R$styleable;->FZWheelSelecter:[I

    .line 824
    new-array v0, v3, [I

    const v1, 0x7f010007

    aput v1, v0, v2

    sput-object v0, Lcom/quattroplay/GraalEra/R$styleable;->com_facebook_friend_picker_fragment:[I

    .line 857
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/quattroplay/GraalEra/R$styleable;->com_facebook_login_view:[I

    .line 938
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/quattroplay/GraalEra/R$styleable;->com_facebook_picker_fragment:[I

    .line 1048
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/quattroplay/GraalEra/R$styleable;->com_facebook_place_picker_fragment:[I

    .line 1119
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/quattroplay/GraalEra/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    .line 732
    nop

    :array_0
    .array-data 4
        0x7f010015
        0x7f010016
    .end array-data

    .line 777
    :array_1
    .array-data 4
        0x7f010012
        0x7f010013
        0x7f010014
    .end array-data

    .line 857
    :array_2
    .array-data 4
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
    .end array-data

    .line 938
    :array_3
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data

    .line 1048
    :array_4
    .array-data 4
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    .line 1119
    :array_5
    .array-data 4
        0x7f010010
        0x7f010011
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
