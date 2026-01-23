package
{
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.shopBook.ui.components.NumericMaxStepperComponent;
   
   public class _net_bigpoint_cityrama_view_shopBook_ui_components_NumericMaxStepperComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_shopBook_ui_components_NumericMaxStepperComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         NumericMaxStepperComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_shopBook_ui_components_NumericMaxStepperComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[1] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tooltipMaxPlus"];
         },null,[bindings[1]],propertyGetter,true);
         watchers[0] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["tooltipMaxMinus"];
         },null,[bindings[0]],propertyGetter,true);
         watchers[2] = new PropertyWatcher("bgMiddle",{"propertyChange":true},[bindings[2]],propertyGetter);
         watchers[3] = new PropertyWatcher("width",{"widthChanged":true},[bindings[2]],null);
         watchers[1].updateParent(target);
         watchers[0].updateParent(target);
         watchers[2].updateParent(target);
         watchers[2].addChild(watchers[3]);
      }
   }
}

