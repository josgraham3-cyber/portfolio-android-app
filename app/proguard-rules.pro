# Add project specific ProGuard rules here.
-keepattributes SourceFile,LineNumberTable
-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}