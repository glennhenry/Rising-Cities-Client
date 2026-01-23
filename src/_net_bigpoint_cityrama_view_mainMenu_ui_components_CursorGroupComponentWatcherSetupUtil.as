package
{
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.CursorGroupComponent;
   
   public class _net_bigpoint_cityrama_view_mainMenu_ui_components_CursorGroupComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_mainMenu_ui_components_CursorGroupComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CursorGroupComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_mainMenu_ui_components_CursorGroupComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[4] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[2]],null);
         watchers[5] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.cursor.demolition")];
         },{"change":true},[bindings[2]],null);
         watchers[0] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[0]],null);
         watchers[1] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.cursor.hip")];
         },{"change":true},[bindings[0]],null);
         watchers[2] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[1]],null);
         watchers[3] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.cursor.move")];
         },{"change":true},[bindings[1]],null);
         watchers[4].updateParent(ResourceManager);
         watchers[5].parentWatcher = watchers[4];
         watchers[4].addChild(watchers[5]);
         watchers[0].updateParent(ResourceManager);
         watchers[1].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[1]);
         watchers[2].updateParent(ResourceManager);
         watchers[3].parentWatcher = watchers[2];
         watchers[2].addChild(watchers[3]);
      }
   }
}

