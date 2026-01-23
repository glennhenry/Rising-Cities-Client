package
{
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.skins.StickyNoteSkinBlue;
   
   public class _net_bigpoint_cityrama_view_common_skins_StickyNoteSkinBlueWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_common_skins_StickyNoteSkinBlueWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         StickyNoteSkinBlue.watcherSetupUtil = new _net_bigpoint_cityrama_view_common_skins_StickyNoteSkinBlueWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[3] = new PropertyWatcher("leftTape",{"propertyChange":true},[bindings[5],bindings[6]],propertyGetter);
         watchers[4] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tapeTop"];
         },null,[bindings[5]],null,true);
         watchers[5] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tapeTop"];
         },null,[bindings[5]],null,true);
         watchers[6] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tapeBottom"];
         },null,[bindings[6]],null,true);
         watchers[7] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tapeBottom"];
         },null,[bindings[6]],null,true);
         watchers[8] = new PropertyWatcher("rightTape",{"propertyChange":true},[bindings[7],bindings[8]],propertyGetter);
         watchers[9] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tapeTop"];
         },null,[bindings[7]],null,true);
         watchers[10] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tapeTop"];
         },null,[bindings[7]],null,true);
         watchers[11] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tapeBottom"];
         },null,[bindings[8]],null,true);
         watchers[12] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tapeBottom"];
         },null,[bindings[8]],null,true);
         watchers[0] = new PropertyWatcher("lala",{"propertyChange":true},[bindings[0],bindings[1],bindings[2],bindings[3]],propertyGetter);
         watchers[1] = new PropertyWatcher("width",{"widthChanged":true},[bindings[0],bindings[2]],null);
         watchers[2] = new PropertyWatcher("height",{"heightChanged":true},[bindings[1],bindings[3]],null);
         watchers[3].updateParent(target);
         watchers[4].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[4]);
         watchers[5].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[5]);
         watchers[6].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[6]);
         watchers[7].parentWatcher = watchers[3];
         watchers[3].addChild(watchers[7]);
         watchers[8].updateParent(target);
         watchers[9].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[9]);
         watchers[10].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[10]);
         watchers[11].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[11]);
         watchers[12].parentWatcher = watchers[8];
         watchers[8].addChild(watchers[12]);
         watchers[0].updateParent(target);
         watchers[0].addChild(watchers[1]);
         watchers[0].addChild(watchers[2]);
      }
   }
}

