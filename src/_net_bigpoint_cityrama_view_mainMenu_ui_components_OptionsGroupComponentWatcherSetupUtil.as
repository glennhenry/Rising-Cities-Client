package
{
   import mx.binding.FunctionReturnWatcher;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.OptionsGroupComponent;
   
   public class _net_bigpoint_cityrama_view_mainMenu_ui_components_OptionsGroupComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_cityrama_view_mainMenu_ui_components_OptionsGroupComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         OptionsGroupComponent.watcherSetupUtil = new _net_bigpoint_cityrama_view_mainMenu_ui_components_OptionsGroupComponentWatcherSetupUtil();
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
         },null,[bindings[1]],null);
         watchers[5] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.basement.off")];
         },{"change":true},[bindings[1]],null);
         watchers[20] = new PropertyWatcher("subMenueSound",{"propertyChange":true},[bindings[4]],propertyGetter);
         watchers[21] = new PropertyWatcher("selected",{"propertyChange":true},[bindings[4]],null);
         watchers[6] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[1]],null);
         watchers[7] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.basement.on")];
         },{"change":true},[bindings[1]],null);
         watchers[2] = new PropertyWatcher("subMenueBasement",{"propertyChange":true},[bindings[1]],propertyGetter);
         watchers[3] = new PropertyWatcher("selected",{"propertyChange":true},[bindings[1]],null);
         watchers[12] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[2]],null);
         watchers[13] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.zoom.out")];
         },{"change":true},[bindings[2]],null);
         watchers[24] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[4]],null);
         watchers[25] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.sound.off")];
         },{"change":true},[bindings[4]],null);
         watchers[0] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[0]],null);
         watchers[1] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.options.advanced")];
         },{"change":true},[bindings[0]],null);
         watchers[10] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[2]],null);
         watchers[11] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.zoom.in")];
         },{"change":true},[bindings[2]],null);
         watchers[22] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[4]],null);
         watchers[23] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.sound.on")];
         },{"change":true},[bindings[4]],null);
         watchers[8] = new PropertyWatcher("subMenueZoom",{"propertyChange":true},[bindings[2]],propertyGetter);
         watchers[9] = new PropertyWatcher("selected",{"propertyChange":true},[bindings[2]],null);
         watchers[16] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[3]],null);
         watchers[17] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.fullscreen.off")];
         },{"change":true},[bindings[3]],null);
         watchers[18] = new FunctionReturnWatcher("getInstance",target,function():Array
         {
            return [];
         },null,[bindings[3]],null);
         watchers[19] = new FunctionReturnWatcher("getString",target,function():Array
         {
            return [target.String("rcl.tooltips.menubar"),target.String("rcl.tooltips.menubar.fullscreen.on")];
         },{"change":true},[bindings[3]],null);
         watchers[14] = new PropertyWatcher("subMenueFullscreen",{"propertyChange":true},[bindings[3]],propertyGetter);
         watchers[15] = new PropertyWatcher("selected",{"propertyChange":true},[bindings[3]],null);
         watchers[4].updateParent(ResourceManager);
         watchers[5].parentWatcher = watchers[4];
         watchers[4].addChild(watchers[5]);
         watchers[20].updateParent(target);
         watchers[20].addChild(watchers[21]);
         watchers[6].updateParent(ResourceManager);
         watchers[7].parentWatcher = watchers[6];
         watchers[6].addChild(watchers[7]);
         watchers[2].updateParent(target);
         watchers[2].addChild(watchers[3]);
         watchers[12].updateParent(ResourceManager);
         watchers[13].parentWatcher = watchers[12];
         watchers[12].addChild(watchers[13]);
         watchers[24].updateParent(ResourceManager);
         watchers[25].parentWatcher = watchers[24];
         watchers[24].addChild(watchers[25]);
         watchers[0].updateParent(ResourceManager);
         watchers[1].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[1]);
         watchers[10].updateParent(ResourceManager);
         watchers[11].parentWatcher = watchers[10];
         watchers[10].addChild(watchers[11]);
         watchers[22].updateParent(ResourceManager);
         watchers[23].parentWatcher = watchers[22];
         watchers[22].addChild(watchers[23]);
         watchers[8].updateParent(target);
         watchers[8].addChild(watchers[9]);
         watchers[16].updateParent(ResourceManager);
         watchers[17].parentWatcher = watchers[16];
         watchers[16].addChild(watchers[17]);
         watchers[18].updateParent(ResourceManager);
         watchers[19].parentWatcher = watchers[18];
         watchers[18].addChild(watchers[19]);
         watchers[14].updateParent(target);
         watchers[14].addChild(watchers[15]);
      }
   }
}

