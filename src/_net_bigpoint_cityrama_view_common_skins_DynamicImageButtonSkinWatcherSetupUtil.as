package
{
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.skins.DynamicImageButtonSkin;
   
   public class _net_bigpoint_cityrama_view_common_skins_DynamicImageButtonSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_common_skins_DynamicImageButtonSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DynamicImageButtonSkin.watcherSetupUtil = new _net_bigpoint_cityrama_view_common_skins_DynamicImageButtonSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[4] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["disabledImage"];
         },null,[bindings[4]],propertyGetter,true);
         watchers[3] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["downImage"];
         },null,[bindings[3]],propertyGetter,true);
         watchers[2] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["overImage"];
         },null,[bindings[2]],propertyGetter,true);
         watchers[1] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["upImage"];
         },null,[bindings[1]],propertyGetter,true);
         watchers[0] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["dynaLibName"];
         },null,[bindings[0]],propertyGetter,true);
         watchers[4].updateParent(target);
         watchers[3].updateParent(target);
         watchers[2].updateParent(target);
         watchers[1].updateParent(target);
         watchers[0].updateParent(target);
      }
   }
}

