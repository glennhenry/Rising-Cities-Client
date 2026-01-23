package
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.LayoutDirection;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.filters.*;
   import mx.managers.ToolTipManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.MainApplication;
   import net.bigpoint.cityrama.view.tooltip.HTMLTooltip;
   
   use namespace mx_internal;
   
   public class Main extends MainApplication implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {
         "controlBarGroup":false,
         "contentGroup":false
      };
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _Main_StylesInit_done:Boolean = false;
      
      private var _embed__font_ArialBlack_medium_normal_1848406807:Class;
      
      private var _embed__font_Arial_medium_normal_170429799:Class;
      
      private var _embed__font_ArialBold_medium_normal_880151399:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function Main()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._embed__font_ArialBlack_medium_normal_1848406807 = Main__embed__font_ArialBlack_medium_normal_1848406807;
         this._embed__font_Arial_medium_normal_170429799 = Main__embed__font_Arial_medium_normal_170429799;
         this._embed__font_ArialBold_medium_normal_880151399 = Main__embed__font_ArialBold_medium_normal_880151399;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._Main_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_MainWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return Main[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.minWidth = 300;
         this.addEventListener("initialize",this.___Main_MainApplication1_initialize);
         this.addEventListener("applicationComplete",this.___Main_MainApplication1_applicationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         Main._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         mx_internal::_Main_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function onInitialize(param1:FlexEvent) : void
      {
         ToolTipManager.toolTipClass = HTMLTooltip;
      }
      
      private function applicationCompleteHandler(param1:FlexEvent) : void
      {
      }
      
      public function ___Main_MainApplication1_initialize(param1:FlexEvent) : void
      {
         this.onInitialize(param1);
      }
      
      public function ___Main_MainApplication1_applicationComplete(param1:FlexEvent) : void
      {
         this.applicationCompleteHandler(param1);
      }
      
      private function _Main_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LayoutDirection.LTR;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"this.layoutDirection");
         return result;
      }
      
      mx_internal function _Main_StylesInit() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 82456
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}

