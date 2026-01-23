package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class QueryMiniLayer extends MiniLayerWindow
   {
      
      public static const CONFIRM_CLICKED:String = "CONFIRM_CLICKED";
      
      public static const DENY_CLICKED:String = "DENY_CLICKED";
      
      public static const ACCEPT_CLICKED:String = "ACCEPT_CLICKED";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _1999277125acceptButtonGroup:HGroup;
      
      private var _236983790confirmButton:MultistateButton;
      
      private var _109729886denyButton:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _273241018mainGroup:VGroup;
      
      private var _229684271selectButtonGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:QueryMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function QueryMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._QueryMiniLayer_Array1_c);
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
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            title = this._data.title;
            this.flavourText.text = this._data.layerText;
            this.selectButtonGroup.includeInLayout = this.selectButtonGroup.visible = this._data.showQueryButtons;
            this.acceptButtonGroup.includeInLayout = this.acceptButtonGroup.visible = !this._data.showQueryButtons;
            if(this._data.showQueryButtons)
            {
               this.confirmButton.label = this._data.confirmBtnLabel;
               this.confirmButton.toolTip = this._data.confirmBtnTooltip;
               this.denyButton.label = this._data.denyBtnLabel;
               this.denyButton.toolTip = this._data.denyBtnTooltip;
            }
            else
            {
               this.acceptButton.label = this._data.acceptBtnLabel;
               this.acceptButton.toolTip = this._data.acceptBtnTooltip;
            }
         }
      }
      
      private function handleButtonClicked(param1:Event) : void
      {
         if(param1.currentTarget is MultistateButton)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            switch(param1.currentTarget)
            {
               case this.confirmButton:
                  dispatchEvent(new Event(CONFIRM_CLICKED,true));
                  break;
               case this.denyButton:
                  dispatchEvent(new Event(DENY_CLICKED,true));
                  break;
               case this.acceptButton:
                  dispatchEvent(new Event(ACCEPT_CLICKED,true));
            }
         }
      }
      
      public function set data(param1:QueryMiniLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function _QueryMiniLayer_Array1_c() : Array
      {
         return [this._QueryMiniLayer_VGroup1_i()];
      }
      
      private function _QueryMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 45;
         _loc1_.paddingBottom = 45;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._QueryMiniLayer_LocaLabel1_i(),this._QueryMiniLayer_BriskImageDynaLib1_i(),this._QueryMiniLayer_Group1_c(),this._QueryMiniLayer_HGroup1_i(),this._QueryMiniLayer_HGroup2_i()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _QueryMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.height = 66;
         _loc1_.percentWidth = 90;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _QueryMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "head_line_long";
         _loc1_.id = "line";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.line = _loc1_;
         BindingManager.executeBindings(this,"line",this.line);
         return _loc1_;
      }
      
      private function _QueryMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 28;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QueryMiniLayer_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 30;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._QueryMiniLayer_MultistateButton1_i(),this._QueryMiniLayer_MultistateButton2_i()];
         _loc1_.id = "selectButtonGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.selectButtonGroup = _loc1_;
         BindingManager.executeBindings(this,"selectButtonGroup",this.selectButtonGroup);
         return _loc1_;
      }
      
      private function _QueryMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "icon_check";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.styleName = "confirm";
         _loc1_.addEventListener("click",this.__confirmButton_click);
         _loc1_.id = "confirmButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.confirmButton = _loc1_;
         BindingManager.executeBindings(this,"confirmButton",this.confirmButton);
         return _loc1_;
      }
      
      public function __confirmButton_click(param1:MouseEvent) : void
      {
         this.handleButtonClicked(param1);
      }
      
      private function _QueryMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "icon_cancel";
         _loc1_.styleName = "abort";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.addEventListener("click",this.__denyButton_click);
         _loc1_.id = "denyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.denyButton = _loc1_;
         BindingManager.executeBindings(this,"denyButton",this.denyButton);
         return _loc1_;
      }
      
      public function __denyButton_click(param1:MouseEvent) : void
      {
         this.handleButtonClicked(param1);
      }
      
      private function _QueryMiniLayer_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._QueryMiniLayer_MultistateButton3_i()];
         _loc1_.id = "acceptButtonGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.acceptButtonGroup = _loc1_;
         BindingManager.executeBindings(this,"acceptButtonGroup",this.acceptButtonGroup);
         return _loc1_;
      }
      
      private function _QueryMiniLayer_MultistateButton3_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.addEventListener("click",this.__acceptButton_click);
         _loc1_.id = "acceptButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.acceptButton = _loc1_;
         BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
         return _loc1_;
      }
      
      public function __acceptButton_click(param1:MouseEvent) : void
      {
         this.handleButtonClicked(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1480909402acceptButton;
         if(_loc2_ !== param1)
         {
            this._1480909402acceptButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButtonGroup() : HGroup
      {
         return this._1999277125acceptButtonGroup;
      }
      
      public function set acceptButtonGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1999277125acceptButtonGroup;
         if(_loc2_ !== param1)
         {
            this._1999277125acceptButtonGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButtonGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmButton() : MultistateButton
      {
         return this._236983790confirmButton;
      }
      
      public function set confirmButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._236983790confirmButton;
         if(_loc2_ !== param1)
         {
            this._236983790confirmButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get denyButton() : MultistateButton
      {
         return this._109729886denyButton;
      }
      
      public function set denyButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._109729886denyButton;
         if(_loc2_ !== param1)
         {
            this._109729886denyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"denyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._800887486flavourText;
         if(_loc2_ !== param1)
         {
            this._800887486flavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get line() : BriskImageDynaLib
      {
         return this._3321844line;
      }
      
      public function set line(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3321844line;
         if(_loc2_ !== param1)
         {
            this._3321844line = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc2_ !== param1)
         {
            this._273241018mainGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectButtonGroup() : HGroup
      {
         return this._229684271selectButtonGroup;
      }
      
      public function set selectButtonGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._229684271selectButtonGroup;
         if(_loc2_ !== param1)
         {
            this._229684271selectButtonGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectButtonGroup",_loc2_,param1));
            }
         }
      }
   }
}

