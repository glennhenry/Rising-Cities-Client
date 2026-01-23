package net.bigpoint.cityrama.view.worldmap
{
   import as3isolib.geom.Pt;
   import com.greensock.TweenMax;
   import com.greensock.easing.Bounce;
   import com.greensock.easing.Linear;
   import com.greensock.easing.Sine;
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
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.ImageOutlineButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.event.SimpleEvent;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class WorldMapLayer extends PaperPopupWindow
   {
      
      public static const EVENT_PLAYFIELD_SELECTED:String = "PLAYFIELD_SELECTED";
      
      private static var signPositions:Array = [new Pt(361,103),new Pt(220,306),new Pt(595,223),new Pt(663,59)];
      
      private static var signOffset:Pt = new Pt(80,135);
      
      private static var shadowOffset:Pt = new Pt(50,58);
      
      private static var shadowOffsetLocked:Pt = new Pt(43,80);
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      private var _1380801655bridge:BriskImageDynaLib;
      
      private var _1684811677cityBuildings1:BriskImageDynaLib;
      
      private var _1684811678cityBuildings2:BriskImageDynaLib;
      
      private var _1684811679cityBuildings3:BriskImageDynaLib;
      
      private var _1684811680cityBuildings4:BriskImageDynaLib;
      
      private var _295396334cityInactiveBackground2:BriskImageDynaLib;
      
      private var _295396335cityInactiveBackground3:BriskImageDynaLib;
      
      private var _295396336cityInactiveBackground4:BriskImageDynaLib;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _11016679playfieldButton1:ImageOutlineButton;
      
      private var _11016678playfieldButton2:ImageOutlineButton;
      
      private var _11016677playfieldButton3:ImageOutlineButton;
      
      private var _11016676playfieldButton4:ImageOutlineButton;
      
      private var _188097779scrollContentGroup:Group;
      
      private var _1019799188signShadow1:BriskImageDynaLib;
      
      private var _1019799189signShadow2:BriskImageDynaLib;
      
      private var _1019799190signShadow3:BriskImageDynaLib;
      
      private var _1019799191signShadow4:BriskImageDynaLib;
      
      private var _1791483012titleLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _showCloseButton:Boolean = false;
      
      private var _draggingMap:Boolean = false;
      
      private var _draggingMapStart:Pt;
      
      private var _validPlayfieldsDirty:Boolean;
      
      private var _validPlayfields:Array;
      
      public function WorldMapLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 976;
         this.maxWidth = 976;
         this.height = 544;
         this.maxHeight = 544;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._WorldMapLayer_Array1_c);
         this.addEventListener("creationComplete",this.___WorldMapLayer_PaperPopupWindow1_creationComplete);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.skinClass = WorldMapLayerSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         while(true)
         {
            var _temp_1:* = this["signShadow" + 1];
            this["playfieldButton" + 1].alpha = 0;
            _temp_1.alpha = 0;
            this["playfieldButton" + 1].mouseEnabled = false;
            var _temp_3:* = this["signShadow" + 1];
            var _loc4_:*;
            this["playfieldButton" + 1].x = _loc4_ = signPositions[1 - 1].x;
            _temp_3.x = 0;
            var _temp_5:* = this["signShadow" + 1];
            this["playfieldButton" + 1].y = _loc4_ = signPositions[1 - 1].y;
            _temp_5.y = 0;
            TweenMax.delayedCall(0.5,this.playButtonShowAnimation,[this["playfieldButton" + 1],1 - 1]);
            var _loc2_:Number = 0.5 + 0.1;
            _loc3_++;
         }
      }
      
      public function setData(param1:Boolean) : void
      {
         if(param1 != this._showCloseButton)
         {
            this._showCloseButton = param1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:int = 0;
         super.commitProperties();
         if(this.closeButton)
         {
            this.closeButton.visible = this.closeButton.includeInLayout = this._showCloseButton;
         }
         if(this._validPlayfieldsDirty && this._validPlayfields && this._validPlayfields.length >= 4)
         {
            this._validPlayfieldsDirty = false;
            _loc1_ = 1;
            while(_loc1_ <= 4)
            {
               this["playfieldButton" + _loc1_].enabled = this._validPlayfields[_loc1_ - 1];
               this["cityBuildings" + _loc1_].visible = this._validPlayfields[_loc1_ - 1];
               if(_loc1_ > 1)
               {
                  this["cityInactiveBackground" + _loc1_].visible = this["cityInactiveBackground" + _loc1_].includeInLayout = !this._validPlayfields[_loc1_ - 1];
               }
               if(this._validPlayfields[_loc1_ - 1])
               {
                  this["playfieldButton" + _loc1_].dynaBmpSourceName = "sign_playfield_" + _loc1_;
                  this["signShadow" + _loc1_].dynaBmpSourceName = "sign_shadow";
               }
               else
               {
                  this["playfieldButton" + _loc1_].dynaBmpSourceName = "sign_locked";
                  this["signShadow" + _loc1_].dynaBmpSourceName = "sign_shadow_lock";
               }
               _loc1_++;
            }
            this.bridge.visible = this.bridge.includeInLayout = this._validPlayfields[1];
         }
      }
      
      private function onPlayfieldSelect(param1:Event) : void
      {
         dispatchEvent(new SimpleEvent(EVENT_PLAYFIELD_SELECTED,this.playfieldButtonToIndex(param1.target as Button)));
      }
      
      private function playfieldButtonToIndex(param1:Button) : int
      {
         var _loc2_:int = 1;
         while(_loc2_ <= 4)
         {
            if(param1 == this["playfieldButton" + _loc2_])
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return 0;
      }
      
      private function onPlayfieldOverHandler(param1:MouseEvent) : void
      {
         if(param1.target is Button)
         {
            this.playButtonOverAnimation(param1.target as Button,this.playfieldButtonToIndex(param1.target as Button) - 1);
         }
      }
      
      private function playButtonShowAnimation(param1:Button, param2:int) : void
      {
         if(TweenMax.isTweening(param1))
         {
            return;
         }
         param1.mouseEnabled = true;
         var _loc3_:Number = Number(signPositions[param2].y);
         TweenMax.fromTo(param1,1,{"y":_loc3_ - 100},{
            "y":_loc3_,
            "ease":Bounce.easeOut
         });
         TweenMax.fromTo(param1,0.5,{"alpha":0},{
            "alpha":1,
            "ease":Sine.easeIn
         });
         var _loc4_:UIComponent = this["signShadow" + (param2 + 1)];
         _loc4_.x = 400;
         _loc4_.y = 200;
         _loc4_.includeInLayout = true;
         var _loc5_:Pt = shadowOffset;
         if(!this._validPlayfields[param2])
         {
            _loc5_ = shadowOffsetLocked;
         }
         TweenMax.fromTo(_loc4_,1,{
            "y":_loc3_ + signOffset.y - _loc5_.y - 70,
            "x":param1.x + signOffset.x - _loc5_.x + 150
         },{
            "y":_loc3_ + signOffset.y - _loc5_.y,
            "x":param1.x + signOffset.x - _loc5_.x,
            "ease":Bounce.easeOut
         });
         TweenMax.fromTo(_loc4_,0.5,{"alpha":0},{
            "alpha":1,
            "ease":Sine.easeIn
         });
      }
      
      private function playButtonOverAnimation(param1:Button, param2:int) : void
      {
         if(TweenMax.isTweening(param1))
         {
            return;
         }
         var _loc3_:Number = Number(signPositions[param2].y);
         TweenMax.fromTo(param1,0.1,{"y":_loc3_},{
            "y":_loc3_ - 30,
            "ease":Linear.easeInOut
         });
         TweenMax.fromTo(param1,0.5,{"y":_loc3_ - 30},{
            "y":_loc3_,
            "delay":0.1,
            "ease":Bounce.easeOut
         });
         var _loc5_:UIComponent = this["signShadow" + (param2 + 1)];
         var _loc6_:Pt = shadowOffset;
         if(!this._validPlayfields[param2])
         {
            _loc6_ = shadowOffsetLocked;
         }
         TweenMax.fromTo(_loc5_,0.1,{
            "y":_loc3_ + signOffset.y - _loc6_.y,
            "x":param1.x + signOffset.x - _loc6_.x
         },{
            "y":_loc3_ + signOffset.y - _loc6_.y - 25,
            "x":param1.x + signOffset.x - _loc6_.x + 55,
            "ease":Sine.easeOut
         });
         TweenMax.fromTo(_loc5_,0.1,{"alpha":1},{
            "alpha":0,
            "ease":Sine.easeOut
         });
         TweenMax.fromTo(_loc5_,0.5,{
            "y":_loc3_ + signOffset.y - _loc6_.y - 25,
            "x":param1.x + signOffset.x - _loc6_.x + 55
         },{
            "y":_loc3_ + signOffset.y - _loc6_.y,
            "x":param1.x + signOffset.x - _loc6_.x,
            "delay":0.1,
            "ease":Bounce.easeOut
         });
         TweenMax.fromTo(_loc5_,0.25,{"alpha":0},{
            "alpha":1,
            "delay":0.1,
            "ease":Sine.easeIn
         });
      }
      
      public function setValidPlayfields(param1:Array) : void
      {
         this._validPlayfields = param1;
         this._validPlayfieldsDirty = true;
         invalidateProperties();
      }
      
      private function _WorldMapLayer_Array1_c() : Array
      {
         return [this._WorldMapLayer_Group1_i()];
      }
      
      private function _WorldMapLayer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.maxWidth = 976;
         _loc1_.mxmlContent = [this._WorldMapLayer_BriskImageDynaLib1_c(),this._WorldMapLayer_BriskImageDynaLib2_i(),this._WorldMapLayer_BriskImageDynaLib3_i(),this._WorldMapLayer_BriskImageDynaLib4_i(),this._WorldMapLayer_BriskImageDynaLib5_i(),this._WorldMapLayer_BriskImageDynaLib6_i(),this._WorldMapLayer_BriskImageDynaLib7_i(),this._WorldMapLayer_BriskImageDynaLib8_i(),this._WorldMapLayer_BriskImageDynaLib9_i(),this._WorldMapLayer_BriskImageDynaLib10_i(),this._WorldMapLayer_BriskImageDynaLib11_i(),this._WorldMapLayer_BriskImageDynaLib12_i(),this._WorldMapLayer_BriskImageDynaLib13_i(),this._WorldMapLayer_ImageOutlineButton1_i(),this._WorldMapLayer_ImageOutlineButton2_i(),this._WorldMapLayer_ImageOutlineButton3_i(),this._WorldMapLayer_ImageOutlineButton4_i(),this._WorldMapLayer_VGroup1_c()];
         _loc1_.id = "scrollContentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollContentGroup = _loc1_;
         BindingManager.executeBindings(this,"scrollContentGroup",this.scrollContentGroup);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.dynaBmpSourceName = "map";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.x = 42;
         _loc1_.y = 312;
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.dynaBmpSourceName = "playfield_inactive_2";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "cityInactiveBackground2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cityInactiveBackground2 = _loc1_;
         BindingManager.executeBindings(this,"cityInactiveBackground2",this.cityInactiveBackground2);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.x = 474;
         _loc1_.y = 287;
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.dynaBmpSourceName = "playfield_inactive_3";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "cityInactiveBackground3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cityInactiveBackground3 = _loc1_;
         BindingManager.executeBindings(this,"cityInactiveBackground3",this.cityInactiveBackground3);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.x = 523;
         _loc1_.y = 75;
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.dynaBmpSourceName = "playfield_inactive_4";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "cityInactiveBackground4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cityInactiveBackground4 = _loc1_;
         BindingManager.executeBindings(this,"cityInactiveBackground4",this.cityInactiveBackground4);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.x = 305;
         _loc1_.y = 326;
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.dynaBmpSourceName = "bridge";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "bridge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bridge = _loc1_;
         BindingManager.executeBindings(this,"bridge",this.bridge);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.x = 285;
         _loc1_.y = 155;
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.dynaBmpSourceName = "city_buildings_1";
         _loc1_.id = "cityBuildings1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cityBuildings1 = _loc1_;
         BindingManager.executeBindings(this,"cityBuildings1",this.cityBuildings1);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.x = 103;
         _loc1_.y = 311;
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.dynaBmpSourceName = "city_buildings_2";
         _loc1_.id = "cityBuildings2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cityBuildings2 = _loc1_;
         BindingManager.executeBindings(this,"cityBuildings2",this.cityBuildings2);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.x = 520;
         _loc1_.y = 325;
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.dynaBmpSourceName = "city_buildings_3";
         _loc1_.id = "cityBuildings3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cityBuildings3 = _loc1_;
         BindingManager.executeBindings(this,"cityBuildings3",this.cityBuildings3);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.x = 575;
         _loc1_.y = 107;
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.dynaBmpSourceName = "city_buildings_4";
         _loc1_.id = "cityBuildings4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cityBuildings4 = _loc1_;
         BindingManager.executeBindings(this,"cityBuildings4",this.cityBuildings4);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.includeInLayout = false;
         _loc1_.id = "signShadow1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.signShadow1 = _loc1_;
         BindingManager.executeBindings(this,"signShadow1",this.signShadow1);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.includeInLayout = false;
         _loc1_.id = "signShadow2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.signShadow2 = _loc1_;
         BindingManager.executeBindings(this,"signShadow2",this.signShadow2);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.includeInLayout = false;
         _loc1_.id = "signShadow3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.signShadow3 = _loc1_;
         BindingManager.executeBindings(this,"signShadow3",this.signShadow3);
         return _loc1_;
      }
      
      private function _WorldMapLayer_BriskImageDynaLib13_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.includeInLayout = false;
         _loc1_.id = "signShadow4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.signShadow4 = _loc1_;
         BindingManager.executeBindings(this,"signShadow4",this.signShadow4);
         return _loc1_;
      }
      
      private function _WorldMapLayer_ImageOutlineButton1_i() : ImageOutlineButton
      {
         var _loc1_:ImageOutlineButton = new ImageOutlineButton();
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.hasUpOutline = false;
         _loc1_.addEventListener("click",this.__playfieldButton1_click);
         _loc1_.addEventListener("mouseOver",this.__playfieldButton1_mouseOver);
         _loc1_.id = "playfieldButton1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.playfieldButton1 = _loc1_;
         BindingManager.executeBindings(this,"playfieldButton1",this.playfieldButton1);
         return _loc1_;
      }
      
      public function __playfieldButton1_click(param1:MouseEvent) : void
      {
         this.onPlayfieldSelect(param1);
      }
      
      public function __playfieldButton1_mouseOver(param1:MouseEvent) : void
      {
         this.onPlayfieldOverHandler(param1);
      }
      
      private function _WorldMapLayer_ImageOutlineButton2_i() : ImageOutlineButton
      {
         var _loc1_:ImageOutlineButton = new ImageOutlineButton();
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.hasUpOutline = false;
         _loc1_.enabled = false;
         _loc1_.addEventListener("click",this.__playfieldButton2_click);
         _loc1_.addEventListener("mouseOver",this.__playfieldButton2_mouseOver);
         _loc1_.id = "playfieldButton2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.playfieldButton2 = _loc1_;
         BindingManager.executeBindings(this,"playfieldButton2",this.playfieldButton2);
         return _loc1_;
      }
      
      public function __playfieldButton2_click(param1:MouseEvent) : void
      {
         this.onPlayfieldSelect(param1);
      }
      
      public function __playfieldButton2_mouseOver(param1:MouseEvent) : void
      {
         this.onPlayfieldOverHandler(param1);
      }
      
      private function _WorldMapLayer_ImageOutlineButton3_i() : ImageOutlineButton
      {
         var _loc1_:ImageOutlineButton = new ImageOutlineButton();
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.hasUpOutline = false;
         _loc1_.enabled = false;
         _loc1_.addEventListener("click",this.__playfieldButton3_click);
         _loc1_.addEventListener("mouseOver",this.__playfieldButton3_mouseOver);
         _loc1_.id = "playfieldButton3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.playfieldButton3 = _loc1_;
         BindingManager.executeBindings(this,"playfieldButton3",this.playfieldButton3);
         return _loc1_;
      }
      
      public function __playfieldButton3_click(param1:MouseEvent) : void
      {
         this.onPlayfieldSelect(param1);
      }
      
      public function __playfieldButton3_mouseOver(param1:MouseEvent) : void
      {
         this.onPlayfieldOverHandler(param1);
      }
      
      private function _WorldMapLayer_ImageOutlineButton4_i() : ImageOutlineButton
      {
         var _loc1_:ImageOutlineButton = new ImageOutlineButton();
         _loc1_.dynaLibName = "gui_popups_worldMap";
         _loc1_.hasUpOutline = false;
         _loc1_.enabled = false;
         _loc1_.addEventListener("click",this.__playfieldButton4_click);
         _loc1_.addEventListener("mouseOver",this.__playfieldButton4_mouseOver);
         _loc1_.id = "playfieldButton4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.playfieldButton4 = _loc1_;
         BindingManager.executeBindings(this,"playfieldButton4",this.playfieldButton4);
         return _loc1_;
      }
      
      public function __playfieldButton4_click(param1:MouseEvent) : void
      {
         this.onPlayfieldSelect(param1);
      }
      
      public function __playfieldButton4_mouseOver(param1:MouseEvent) : void
      {
         this.onPlayfieldOverHandler(param1);
      }
      
      private function _WorldMapLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 186;
         _loc1_.height = 161;
         _loc1_.maxWidth = 186;
         _loc1_.maxHeight = 161;
         _loc1_.left = 32;
         _loc1_.top = 30;
         _loc1_.horizontalCenter = "center";
         _loc1_.verticalCenter = "top";
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._WorldMapLayer_LocaLabel1_i(),this._WorldMapLayer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WorldMapLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.width = 180;
         _loc1_.height = 20;
         _loc1_.maxWidth = 186;
         _loc1_.styleName = "blueThirteenCenter";
         _loc1_.id = "titleLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleLabel = _loc1_;
         BindingManager.executeBindings(this,"titleLabel",this.titleLabel);
         return _loc1_;
      }
      
      private function _WorldMapLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 4;
         _loc1_.maxWidth = 186;
         _loc1_.styleName = "greyElevenCenter";
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      public function ___WorldMapLayer_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bridge() : BriskImageDynaLib
      {
         return this._1380801655bridge;
      }
      
      public function set bridge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1380801655bridge;
         if(_loc2_ !== param1)
         {
            this._1380801655bridge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bridge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cityBuildings1() : BriskImageDynaLib
      {
         return this._1684811677cityBuildings1;
      }
      
      public function set cityBuildings1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1684811677cityBuildings1;
         if(_loc2_ !== param1)
         {
            this._1684811677cityBuildings1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityBuildings1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cityBuildings2() : BriskImageDynaLib
      {
         return this._1684811678cityBuildings2;
      }
      
      public function set cityBuildings2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1684811678cityBuildings2;
         if(_loc2_ !== param1)
         {
            this._1684811678cityBuildings2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityBuildings2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cityBuildings3() : BriskImageDynaLib
      {
         return this._1684811679cityBuildings3;
      }
      
      public function set cityBuildings3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1684811679cityBuildings3;
         if(_loc2_ !== param1)
         {
            this._1684811679cityBuildings3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityBuildings3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cityBuildings4() : BriskImageDynaLib
      {
         return this._1684811680cityBuildings4;
      }
      
      public function set cityBuildings4(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1684811680cityBuildings4;
         if(_loc2_ !== param1)
         {
            this._1684811680cityBuildings4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityBuildings4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cityInactiveBackground2() : BriskImageDynaLib
      {
         return this._295396334cityInactiveBackground2;
      }
      
      public function set cityInactiveBackground2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._295396334cityInactiveBackground2;
         if(_loc2_ !== param1)
         {
            this._295396334cityInactiveBackground2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityInactiveBackground2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cityInactiveBackground3() : BriskImageDynaLib
      {
         return this._295396335cityInactiveBackground3;
      }
      
      public function set cityInactiveBackground3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._295396335cityInactiveBackground3;
         if(_loc2_ !== param1)
         {
            this._295396335cityInactiveBackground3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityInactiveBackground3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cityInactiveBackground4() : BriskImageDynaLib
      {
         return this._295396336cityInactiveBackground4;
      }
      
      public function set cityInactiveBackground4(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._295396336cityInactiveBackground4;
         if(_loc2_ !== param1)
         {
            this._295396336cityInactiveBackground4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cityInactiveBackground4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc2_ !== param1)
         {
            this._949820541flavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldButton1() : ImageOutlineButton
      {
         return this._11016679playfieldButton1;
      }
      
      public function set playfieldButton1(param1:ImageOutlineButton) : void
      {
         var _loc2_:Object = this._11016679playfieldButton1;
         if(_loc2_ !== param1)
         {
            this._11016679playfieldButton1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldButton1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldButton2() : ImageOutlineButton
      {
         return this._11016678playfieldButton2;
      }
      
      public function set playfieldButton2(param1:ImageOutlineButton) : void
      {
         var _loc2_:Object = this._11016678playfieldButton2;
         if(_loc2_ !== param1)
         {
            this._11016678playfieldButton2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldButton2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldButton3() : ImageOutlineButton
      {
         return this._11016677playfieldButton3;
      }
      
      public function set playfieldButton3(param1:ImageOutlineButton) : void
      {
         var _loc2_:Object = this._11016677playfieldButton3;
         if(_loc2_ !== param1)
         {
            this._11016677playfieldButton3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldButton3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldButton4() : ImageOutlineButton
      {
         return this._11016676playfieldButton4;
      }
      
      public function set playfieldButton4(param1:ImageOutlineButton) : void
      {
         var _loc2_:Object = this._11016676playfieldButton4;
         if(_loc2_ !== param1)
         {
            this._11016676playfieldButton4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldButton4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollContentGroup() : Group
      {
         return this._188097779scrollContentGroup;
      }
      
      public function set scrollContentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._188097779scrollContentGroup;
         if(_loc2_ !== param1)
         {
            this._188097779scrollContentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollContentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get signShadow1() : BriskImageDynaLib
      {
         return this._1019799188signShadow1;
      }
      
      public function set signShadow1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1019799188signShadow1;
         if(_loc2_ !== param1)
         {
            this._1019799188signShadow1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signShadow1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get signShadow2() : BriskImageDynaLib
      {
         return this._1019799189signShadow2;
      }
      
      public function set signShadow2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1019799189signShadow2;
         if(_loc2_ !== param1)
         {
            this._1019799189signShadow2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signShadow2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get signShadow3() : BriskImageDynaLib
      {
         return this._1019799190signShadow3;
      }
      
      public function set signShadow3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1019799190signShadow3;
         if(_loc2_ !== param1)
         {
            this._1019799190signShadow3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signShadow3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get signShadow4() : BriskImageDynaLib
      {
         return this._1019799191signShadow4;
      }
      
      public function set signShadow4(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1019799191signShadow4;
         if(_loc2_ !== param1)
         {
            this._1019799191signShadow4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signShadow4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleLabel() : LocaLabel
      {
         return this._1791483012titleLabel;
      }
      
      public function set titleLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1791483012titleLabel;
         if(_loc2_ !== param1)
         {
            this._1791483012titleLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleLabel",_loc2_,param1));
            }
         }
      }
   }
}

