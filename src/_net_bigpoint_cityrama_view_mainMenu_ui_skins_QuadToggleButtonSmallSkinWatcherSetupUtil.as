package
{
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.mainMenu.ui.skins.QuadToggleButtonSmallSkin;
   
   public class _net_bigpoint_cityrama_view_mainMenu_ui_skins_QuadToggleButtonSmallSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_mainMenu_ui_skins_QuadToggleButtonSmallSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         QuadToggleButtonSmallSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_mainMenu_ui_skins_QuadToggleButtonSmallSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[3] = new PropertyWatcher("hostComponent",{"propertyChange":true},[bindings[2],bindings[3],bindings[4],bindings[5],bindings[6],bindings[7],bindings[8],bindings[9],bindings[10],bindings[11],bindings[12],bindings[13],bindings[14],bindings[15],bindings[16],bindings[17],bindings[18],bindings[19],bindings[20],bindings[22],bindings[23],bindings[24]],propertyGetter);
         watchers[4] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["libraryName"];
         },null,[bindings[2]],null,true);
         watchers[5] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["shadowImage"];
         },null,[bindings[3]],null,true);
         watchers[6] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["fileName"];
         },null,[bindings[4]],null,true);
         watchers[7] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["libraryName"];
         },null,[bindings[5]],null,true);
         watchers[8] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["middleImage"];
         },null,[bindings[6]],null,true);
         watchers[9] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["fileName"];
         },null,[bindings[7]],null,true);
         watchers[10] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["libraryName"];
         },null,[bindings[8]],null,true);
         watchers[11] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["topImage"];
         },null,[bindings[9]],null,true);
         watchers[12] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["fileName"];
         },null,[bindings[10]],null,true);
         watchers[13] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["libraryName"];
         },null,[bindings[11]],null,true);
         watchers[14] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["iconImage"];
         },null,[bindings[12]],null,true);
         watchers[15] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["iconSelectedImage"];
         },null,[bindings[13]],null,true);
         watchers[16] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["iconSelectedImage"];
         },null,[bindings[14]],null,true);
         watchers[17] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["iconSelectedImage"];
         },null,[bindings[15]],null,true);
         watchers[18] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["iconSelectedImage"];
         },null,[bindings[16]],null,true);
         watchers[19] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["fileName"];
         },null,[bindings[17]],null,true);
         watchers[20] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["libraryName"];
         },null,[bindings[18]],null,true);
         watchers[21] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["maskImage"];
         },null,[bindings[19]],null,true);
         watchers[22] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["fileName"];
         },null,[bindings[20]],null,true);
         watchers[24] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["libraryName"];
         },null,[bindings[22]],null,true);
         watchers[25] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["maskImage"];
         },null,[bindings[23]],null,true);
         watchers[26] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["fileName"];
         },null,[bindings[24]],null,true);
         watchers[0] = new PropertyWatcher("shadowImage",{"propertyChange":true},[bindings[0],bindings[1]],propertyGetter);
         watchers[1] = new PropertyWatcher("width",{"widthChanged":true},[bindings[0]],null);
         watchers[2] = new PropertyWatcher("height",{"heightChanged":true},[bindings[1]],null);
         watchers[23] = new PropertyWatcher("maskImage",{"propertyChange":true},[bindings[21]],propertyGetter);
         watchers[3].updateParent(target);
         watchers[4].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[4]);
         watchers[5].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[5]);
         watchers[6].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[6]);
         watchers[7].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[7]);
         watchers[8].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[8]);
         watchers[9].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[9]);
         watchers[10].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[10]);
         watchers[11].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[11]);
         watchers[12].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[12]);
         watchers[13].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[13]);
         watchers[14].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[14]);
         watchers[15].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[15]);
         watchers[16].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[16]);
         watchers[17].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[17]);
         watchers[18].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[18]);
         watchers[19].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[19]);
         watchers[20].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[20]);
         watchers[21].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[21]);
         watchers[22].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[22]);
         watchers[24].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[24]);
         watchers[25].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[25]);
         watchers[26].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[26]);
         watchers[0].updateParent(target);
         watchers[0].addChild(watchers[1]);
         watchers[0].addChild(watchers[2]);
         watchers[23].updateParent(target);
      }
   }
}

