.class public Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mBlack:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

.field private mCyan:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mGreen:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mHex:Landroid/widget/EditText;

.field private mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mRed:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mSetButton:Landroid/widget/ImageButton;

.field private mWhite:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mYellow:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->init(I)V

    return-void
.end method

.method static synthetic access$000(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;
    .locals 1

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    return-object v0
.end method

.method private init(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->requestWindowFeature(I)Z

    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setUp(I)V

    return-void
.end method

.method private setUp(I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f04012f      ## public layout dialog_color_picker

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    const v2, 0x7f090db1      ## public string dialog_color_picker

    invoke-virtual {p0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(I)V

    const v2, 0x7f0f0325      ## public id color_picker_view

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    const v2, 0x7f0f0328      ## public id old_color_panel

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v2, 0x7f0f0320      ## public id new_color_panel

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v2, 0x7f0f0321      ## public id white_panel

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mWhite:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v2, 0x7f0f0323      ## public id black_panel

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mBlack:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v2, 0x7f0f0322      ## public id cyan_panel

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mCyan:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v2, 0x7f0f0324      ## public id red_panel

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mRed:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v2, 0x7f0f0326      ## public id green_panel

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mGreen:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v2, 0x7f0f0327      ## public id yellow_panel

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mYellow:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v2, 0x7f0f032b      ## public id hex

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    const v2, 0x7f0f032c      ## public id enter

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v2, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mWhite:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mBlack:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const/high16 v3, -0x1000000

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mCyan:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v3, -0xcc4a1b

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mRed:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const/high16 v3, -0x10000

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mGreen:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v3, -0xff0100

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mYellow:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const/16 v3, -0x100

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    new-instance v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;

    invoke-direct {v3, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;-><init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f0320      ## public id new_color_panel

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 2

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    :try_start_0
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const-string v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    const-string v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "old_color"

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "new_color"

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    return-void
.end method

.method public setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;

    invoke-direct {v0, p0, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;-><init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;I)V

    invoke-virtual {p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    return-void
.end method
