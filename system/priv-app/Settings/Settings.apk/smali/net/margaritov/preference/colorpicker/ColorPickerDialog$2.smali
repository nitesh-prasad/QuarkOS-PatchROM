.class Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;I)V
    .locals 0

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iput p2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    # getter for: Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$100(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move-result-object v0

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;->val$color:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
