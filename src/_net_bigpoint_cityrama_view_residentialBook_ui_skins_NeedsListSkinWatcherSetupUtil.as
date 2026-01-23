package
{
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.NeedsListSkin;
   
   public class _net_bigpoint_cityrama_view_residentialBook_ui_skins_NeedsListSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_residentialBook_ui_skins_NeedsListSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         NeedsListSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_residentialBook_ui_skins_NeedsListSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[0] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["needTooltip"];
         },null,[bindings[0]],propertyGetter,true);
         watchers[0].updateParent(target);
      }
   }
}

