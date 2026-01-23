package net.bigpoint.cityrama.view.emergencyTV.components
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
   import mx.containers.Canvas;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Move;
   import mx.effects.easing.Linear;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.model.emergencyTV.vo.EmergencyTVVo;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.emergencyTV.skins.TVDropButtonSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class EmergencyTV extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static const TICKER_SPEED:Number = 1200;
      
      public static const EVENT_TOGGLE_TV:String = "EVENT_TOGGLE_TV";
      
      private var _92895825alarm:BriskMCDynaLib;
      
      private var _432870145dropButton:ToggleButton;
      
      private var _1869907812maskCanvas:Canvas;
      
      private var _301100856move_ticker:Move;
      
      private var _278873964newsGroup:Group;
      
      private var _418658237newsTicker:LocaLabel;
      
      private var _3714tv:NewsComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _tvData:EmergencyTVVo;
      
      private var _dataDirty:Boolean;
      
      private var _siren:BitmapClip;
      
      private var _tickerDuration:Number = 1000;
      
      private var _intervalID:uint;
      
      private var _sirenLoaded:Boolean;
      
      private var _tvCollapsedState:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EmergencyTV()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._EmergencyTV_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_emergencyTV_components_EmergencyTVWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EmergencyTV[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.visible = false;
         this.includeInLayout = false;
         this.mxmlContent = [this._EmergencyTV_VGroup1_c()];
         this._EmergencyTV_Move1_i();
         this.addEventListener("creationComplete",this.___EmergencyTV_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         EmergencyTV._watcherSetupUtil = param1;
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            if(!this._tvData.active)
            {
               var _temp_1:* = this;
               this.visible = false;
               _temp_1.includeInLayout = false;
               return;
            }
            if(this._sirenLoaded)
            {
               this._siren.play();
            }
            this.tv.newsData = this._tvData.showData;
            this.complete();
         }
      }
      
      private function dropButton_clickHandler(param1:MouseEvent = null) : void
      {
         this.tv.includeInLayout = this.tv.visible = !this.tv.includeInLayout;
         this._tvCollapsedState = !this.tv.includeInLayout;
         this.tv.stopClips(!this.tv.includeInLayout);
         dispatchEvent(new Event(EVENT_TOGGLE_TV));
      }
      
      private function onCreationComplete() : void
      {
         this.alarm.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAlarmLoaded);
      }
      
      private function onAlarmLoaded(param1:Event) : void
      {
         this._sirenLoaded = true;
         this.alarm.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAlarmLoaded);
         this._siren = new BitmapClip(this.alarm.movieClip,"tv_alarm",10);
         this._siren.play();
         while(this.alarm.numChildren > 0)
         {
            this.alarm.removeChildAt(0);
         }
         this.alarm.addChild(this._siren);
      }
      
      private function complete() : void
      {
         var _temp_1:* = this;
         this.includeInLayout = true;
         _temp_1.visible = true;
         this.newsTicker.text = this._tvData.newsText;
         this.move_ticker.xFrom = this.maskCanvas.width;
         this.newsTicker.validateNow();
         var _loc1_:Number = this.newsTicker.measuredWidth + this.maskCanvas.width;
         this.move_ticker.xTo = -(_loc1_ - this.maskCanvas.width);
         this.move_ticker.repeatCount = 0;
         this.move_ticker.repeatDelay = 0;
         this._tickerDuration = _loc1_ / 100 * TICKER_SPEED;
         this.move_ticker.duration = this._tickerDuration;
         this.move_ticker.play();
         this.startTimer();
      }
      
      private function tickerPause() : void
      {
         this.move_ticker.pause();
      }
      
      private function tickerResume() : void
      {
         this.move_ticker.resume();
      }
      
      private function startTimer() : void
      {
         clearInterval(this._intervalID);
         this._intervalID = setInterval(this.reset,this._tvData.showTime);
      }
      
      public function reset() : void
      {
         clearInterval(this._intervalID);
         var _temp_1:* = this;
         this.visible = false;
         _temp_1.includeInLayout = false;
         var _temp_2:* = this.tv;
         var _loc1_:Boolean;
         this.tv.visible = _loc1_ = true;
         _temp_2.includeInLayout = false;
         this.dropButton.selected = false;
         this.move_ticker.stop();
         this._siren.stop();
         this.tv.stopClips();
      }
      
      public function set tvData(param1:EmergencyTVVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._tvData))
         {
            this._dataDirty = true;
            this._tvData = param1;
            invalidateProperties();
         }
      }
      
      public function get tvCollapsedState() : Boolean
      {
         return this._tvCollapsedState;
      }
      
      public function set tvCollapsedState(param1:Boolean) : void
      {
         this._tvCollapsedState = param1;
         this.dropButton.selected = param1;
         this.tv.includeInLayout = this.tv.visible = !param1;
         this.tv.stopClips(!this.tv.includeInLayout);
      }
      
      private function _EmergencyTV_Move1_i() : Move
      {
         var _loc1_:Move = new Move();
         this.move_ticker = _loc1_;
         BindingManager.executeBindings(this,"move_ticker",this.move_ticker);
         return _loc1_;
      }
      
      private function _EmergencyTV_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._EmergencyTV_BriskMCDynaLib1_i(),this._EmergencyTV_Group2_i(),this._EmergencyTV_NewsComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTV_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_emergency";
         _loc1_.dynaMCSourceName = "emergency_alarm";
         _loc1_.id = "alarm";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.alarm = _loc1_;
         BindingManager.executeBindings(this,"alarm",this.alarm);
         return _loc1_;
      }
      
      private function _EmergencyTV_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._EmergencyTV_BriskImageDynaLib1_c(),this._EmergencyTV_HGroup1_c()];
         _loc1_.id = "newsGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newsGroup = _loc1_;
         BindingManager.executeBindings(this,"newsGroup",this.newsGroup);
         return _loc1_;
      }
      
      private function _EmergencyTV_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_emergency";
         _loc1_.dynaBmpSourceName = "news_frame_top";
         _loc1_.left = 2;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTV_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 23;
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingLeft = 4;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._EmergencyTV_Group3_c(),this._EmergencyTV_ToggleButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTV_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._EmergencyTV_Canvas1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTV_Canvas1_i() : Canvas
      {
         var temp:Canvas = new Canvas();
         temp.horizontalScrollPolicy = "off";
         temp.width = 220;
         temp.left = 4;
         temp.addEventListener("mouseOver",this.__maskCanvas_mouseOver);
         temp.addEventListener("mouseOut",this.__maskCanvas_mouseOut);
         temp.id = "maskCanvas";
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.mx_internal::_documentDescriptor = new UIComponentDescriptor({
            "type":Canvas,
            "id":"maskCanvas",
            "events":{
               "mouseOver":"__maskCanvas_mouseOver",
               "mouseOut":"__maskCanvas_mouseOut"
            },
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":LocaLabel,
                  "id":"newsTicker",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.textAlign = "left";
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "verticalCenter":2,
                        "styleName":"fontABlack",
                        "left":2
                     };
                  }
               })]};
            }
         });
         temp.mx_internal::_documentDescriptor.document = this;
         this.maskCanvas = temp;
         BindingManager.executeBindings(this,"maskCanvas",this.maskCanvas);
         return temp;
      }
      
      public function __maskCanvas_mouseOver(param1:MouseEvent) : void
      {
         this.tickerPause();
      }
      
      public function __maskCanvas_mouseOut(param1:MouseEvent) : void
      {
         this.tickerResume();
      }
      
      private function _EmergencyTV_ToggleButton1_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.width = 23;
         _loc1_.height = 23;
         _loc1_.focusEnabled = false;
         _loc1_.setStyle("skinClass",TVDropButtonSkin);
         _loc1_.addEventListener("click",this.__dropButton_click);
         _loc1_.id = "dropButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dropButton = _loc1_;
         BindingManager.executeBindings(this,"dropButton",this.dropButton);
         return _loc1_;
      }
      
      public function __dropButton_click(param1:MouseEvent) : void
      {
         this.dropButton_clickHandler();
      }
      
      private function _EmergencyTV_NewsComponent1_i() : NewsComponent
      {
         var _loc1_:NewsComponent = new NewsComponent();
         _loc1_.bottom = 0;
         _loc1_.id = "tv";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tv = _loc1_;
         BindingManager.executeBindings(this,"tv",this.tv);
         return _loc1_;
      }
      
      public function ___EmergencyTV_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete();
      }
      
      private function _EmergencyTV_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,null,null,"move_ticker.target","newsTicker");
         result[1] = new Binding(this,function():Function
         {
            return Linear.easeNone;
         },null,"move_ticker.easingFunction");
         result[2] = new Binding(this,function():Array
         {
            var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
         },null,"newsTicker.filters");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get alarm() : BriskMCDynaLib
      {
         return this._92895825alarm;
      }
      
      public function set alarm(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._92895825alarm;
         if(_loc2_ !== param1)
         {
            this._92895825alarm = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"alarm",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dropButton() : ToggleButton
      {
         return this._432870145dropButton;
      }
      
      public function set dropButton(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._432870145dropButton;
         if(_loc2_ !== param1)
         {
            this._432870145dropButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maskCanvas() : Canvas
      {
         return this._1869907812maskCanvas;
      }
      
      public function set maskCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1869907812maskCanvas;
         if(_loc2_ !== param1)
         {
            this._1869907812maskCanvas = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maskCanvas",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get move_ticker() : Move
      {
         return this._301100856move_ticker;
      }
      
      public function set move_ticker(param1:Move) : void
      {
         var _loc2_:Object = this._301100856move_ticker;
         if(_loc2_ !== param1)
         {
            this._301100856move_ticker = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"move_ticker",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newsGroup() : Group
      {
         return this._278873964newsGroup;
      }
      
      public function set newsGroup(param1:Group) : void
      {
         var _loc2_:Object = this._278873964newsGroup;
         if(_loc2_ !== param1)
         {
            this._278873964newsGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newsGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newsTicker() : LocaLabel
      {
         return this._418658237newsTicker;
      }
      
      public function set newsTicker(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._418658237newsTicker;
         if(_loc2_ !== param1)
         {
            this._418658237newsTicker = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newsTicker",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tv() : NewsComponent
      {
         return this._3714tv;
      }
      
      public function set tv(param1:NewsComponent) : void
      {
         var _loc2_:Object = this._3714tv;
         if(_loc2_ !== param1)
         {
            this._3714tv = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tv",_loc2_,param1));
            }
         }
      }
   }
}

