package net.bigpoint.cityrama.view.application.ui.skins
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.SolidColor;
   import mx.states.AddItems;
   import mx.states.State;
   import mx.styles.*;
   import spark.components.Group;
   import spark.components.SkinnableContainer;
   import spark.components.supportClasses.Skin;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class RoundedBorderContainerSkin extends Skin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _RoundedBorderContainerSkin_BitmapImage1:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage2:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage3:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage4:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage5:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage6:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage7:BitmapImage;
      
      public var _RoundedBorderContainerSkin_BitmapImage8:BitmapImage;
      
      public var _RoundedBorderContainerSkin_SolidColor1:SolidColor;
      
      private var _809612678contentGroup:Group;
      
      private var _406820268overlayRect:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:SkinnableContainer;
      
      public function RoundedBorderContainerSkin()
      {
         var watchers:Array;
         var _RoundedBorderContainerSkin_Rect1_factory:DeferredInstanceFromFunction;
         var i:uint;
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._RoundedBorderContainerSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_application_ui_skins_RoundedBorderContainerSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RoundedBorderContainerSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._RoundedBorderContainerSkin_Group1_i(),this._RoundedBorderContainerSkin_BitmapImage1_i(),this._RoundedBorderContainerSkin_BitmapImage2_i(),this._RoundedBorderContainerSkin_BitmapImage3_i(),this._RoundedBorderContainerSkin_BitmapImage4_i(),this._RoundedBorderContainerSkin_BitmapImage5_i(),this._RoundedBorderContainerSkin_BitmapImage6_i(),this._RoundedBorderContainerSkin_BitmapImage7_i(),this._RoundedBorderContainerSkin_BitmapImage8_i()];
         this.currentState = "disabled";
         _RoundedBorderContainerSkin_Rect1_factory = new DeferredInstanceFromFunction(this._RoundedBorderContainerSkin_Rect1_i);
         states = [new State({
            "name":"disabled",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_RoundedBorderContainerSkin_Rect1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_RoundedBorderContainerSkin_BitmapImage8"]
            })]
         }),new State({
            "name":"normal",
            "overrides":[]
         })];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         RoundedBorderContainerSkin._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
      }
      
      private function _RoundedBorderContainerSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.rotation = 180;
         _loc1_.width = 8;
         _loc1_.height = 8;
         _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage1");
         this._RoundedBorderContainerSkin_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage1",this._RoundedBorderContainerSkin_BitmapImage1);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage2_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.rotation = -90;
         _loc1_.width = 8;
         _loc1_.height = 8;
         _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage2");
         this._RoundedBorderContainerSkin_BitmapImage2 = _loc1_;
         BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage2",this._RoundedBorderContainerSkin_BitmapImage2);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage3_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.width = 8;
         _loc1_.height = 8;
         _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage3");
         this._RoundedBorderContainerSkin_BitmapImage3 = _loc1_;
         BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage3",this._RoundedBorderContainerSkin_BitmapImage3);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage4_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.bottom = 0;
         _loc1_.left = 0;
         _loc1_.width = 8;
         _loc1_.height = 8;
         _loc1_.rotation = 90;
         _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage4");
         this._RoundedBorderContainerSkin_BitmapImage4 = _loc1_;
         BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage4",this._RoundedBorderContainerSkin_BitmapImage4);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage5_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.top = 0;
         _loc1_.left = 8;
         _loc1_.right = 8;
         _loc1_.rotation = 180;
         _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage5");
         this._RoundedBorderContainerSkin_BitmapImage5 = _loc1_;
         BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage5",this._RoundedBorderContainerSkin_BitmapImage5);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage6_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.bottom = 0;
         _loc1_.left = 8;
         _loc1_.right = 8;
         _loc1_.rotation = 0;
         _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage6");
         this._RoundedBorderContainerSkin_BitmapImage6 = _loc1_;
         BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage6",this._RoundedBorderContainerSkin_BitmapImage6);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage7_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.left = 0;
         _loc1_.top = 8;
         _loc1_.bottom = 8;
         _loc1_.rotation = 90;
         _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage7");
         this._RoundedBorderContainerSkin_BitmapImage7 = _loc1_;
         BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage7",this._RoundedBorderContainerSkin_BitmapImage7);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_BitmapImage8_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.right = 0;
         _loc1_.top = 8;
         _loc1_.bottom = 8;
         _loc1_.rotation = -90;
         _loc1_.initialized(this,"_RoundedBorderContainerSkin_BitmapImage8");
         this._RoundedBorderContainerSkin_BitmapImage8 = _loc1_;
         BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_BitmapImage8",this._RoundedBorderContainerSkin_BitmapImage8);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.fill = this._RoundedBorderContainerSkin_SolidColor1_i();
         _loc1_.initialized(this,"overlayRect");
         this.overlayRect = _loc1_;
         BindingManager.executeBindings(this,"overlayRect",this.overlayRect);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         this._RoundedBorderContainerSkin_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_RoundedBorderContainerSkin_SolidColor1",this._RoundedBorderContainerSkin_SolidColor1);
         return _loc1_;
      }
      
      private function _RoundedBorderContainerSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return new border_corner();
         },null,"_RoundedBorderContainerSkin_BitmapImage1.source");
         result[1] = new Binding(this,function():Object
         {
            return new border_corner();
         },null,"_RoundedBorderContainerSkin_BitmapImage2.source");
         result[2] = new Binding(this,function():Object
         {
            return new border_corner();
         },null,"_RoundedBorderContainerSkin_BitmapImage3.source");
         result[3] = new Binding(this,function():Object
         {
            return new border_corner();
         },null,"_RoundedBorderContainerSkin_BitmapImage4.source");
         result[4] = new Binding(this,function():Object
         {
            return new border_tile();
         },null,"_RoundedBorderContainerSkin_BitmapImage5.source");
         result[5] = new Binding(this,function():Object
         {
            return new border_tile();
         },null,"_RoundedBorderContainerSkin_BitmapImage6.source");
         result[6] = new Binding(this,function():Object
         {
            return new border_tile();
         },null,"_RoundedBorderContainerSkin_BitmapImage7.source");
         result[7] = new Binding(this,function():Object
         {
            return new border_tile();
         },null,"_RoundedBorderContainerSkin_BitmapImage8.source");
         result[8] = new Binding(this,function():uint
         {
            return getStyle("backgroundDisabledColor");
         },null,"_RoundedBorderContainerSkin_SolidColor1.color");
         result[9] = new Binding(this,function():Number
         {
            return getStyle("disabledOverlayAlpha");
         },null,"_RoundedBorderContainerSkin_SolidColor1.alpha");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get overlayRect() : Rect
      {
         return this._406820268overlayRect;
      }
      
      public function set overlayRect(param1:Rect) : void
      {
         var _loc2_:Object = this._406820268overlayRect;
         if(_loc2_ !== param1)
         {
            this._406820268overlayRect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayRect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : SkinnableContainer
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:SkinnableContainer) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

