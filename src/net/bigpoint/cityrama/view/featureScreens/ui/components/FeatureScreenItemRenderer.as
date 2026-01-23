package net.bigpoint.cityrama.view.featureScreens.ui.components
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenStepDataVo;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import spark.components.Group;
   import spark.components.supportClasses.ItemRenderer;
   
   public class FeatureScreenItemRenderer extends ItemRenderer
   {
      
      private var _951530617content:Group;
      
      private var _1926591367stepHeader:LocaLabel;
      
      private var _702194298stepHeaderGroup:Group;
      
      private var _1324487151stepImage:BriskMCDynaLib;
      
      private var _1428519449stepText:LocaLabel;
      
      private var _2013131750stepTextGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _stepData:FeatureScreenStepDataVo;
      
      private var _titleContainer:DisplayObject;
      
      private var _textContainer:DisplayObject;
      
      private var _titleString:String;
      
      private var _textString:String;
      
      private var _isDirty:Boolean;
      
      private var _textSet:Boolean;
      
      public function FeatureScreenItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.width = 230;
         this.mxmlContent = [this._FeatureScreenItemRenderer_Group1_i()];
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
      
      override public function set data(param1:Object) : void
      {
         if(param1 is FeatureScreenStepDataVo)
         {
            if(param1 != this._stepData)
            {
               super.data = param1;
               this._stepData = param1 as FeatureScreenStepDataVo;
               this._isDirty = true;
               this._textSet = false;
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._stepData) && this._isDirty)
         {
            this.content.visible = false;
            this._isDirty = false;
            if(!this._stepData.isEmpty)
            {
               this.stepImage.dynaLibName = this._stepData.dynaLibName;
               this.stepImage.dynaMCSourceName = this._stepData.dynaMCName;
               if(!this._textSet)
               {
                  this.stepImage.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.setTextPosition);
               }
               this._titleString = this._stepData.title;
               this._textString = this._stepData.text;
            }
            else
            {
               this.stepImage.dynaLibName = null;
               this.stepImage.dynaMCSourceName = null;
               this.visible = false;
            }
         }
      }
      
      private function setTextPosition(param1:Event) : void
      {
         this.stepImage.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.setTextPosition);
         this._titleContainer = this.stepImage.movieClip.getChildByName("titleBox");
         this._textContainer = this.stepImage.movieClip.getChildByName("textBox");
         if(this._titleContainer)
         {
            this._titleContainer.visible = false;
            this._titleContainer.alpha = 0;
         }
         if(this._textContainer)
         {
            this._textContainer.visible = false;
            this._textContainer.alpha = 0;
         }
         this.stepImage.invalidateDisplayList();
         if(Boolean(this._titleString) && Boolean(this._titleContainer))
         {
            this.stepHeaderGroup.width = this._titleContainer.width;
            this.stepHeaderGroup.height = this._titleContainer.height;
            this.stepHeaderGroup.x = this._titleContainer.x;
            this.stepHeaderGroup.y = this._titleContainer.y;
            this.stepHeader.text = this._titleString;
            this.stepHeader.visible = true;
         }
         if(Boolean(this._textString) && Boolean(this._textContainer))
         {
            this.stepTextGroup.width = this._textContainer.width;
            this.stepTextGroup.height = this._textContainer.height;
            this.stepTextGroup.x = this._textContainer.x;
            this.stepTextGroup.y = this._textContainer.y;
            this.stepText.text = this._textString;
            this.stepText.visible = true;
         }
         this._textContainer = null;
         this._titleContainer = null;
         this._textSet = true;
         this.stepImage.visible = true;
         this.content.visible = true;
         invalidateProperties();
      }
      
      private function _FeatureScreenItemRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._FeatureScreenItemRenderer_BriskMCDynaLib1_i(),this._FeatureScreenItemRenderer_Group2_i(),this._FeatureScreenItemRenderer_Group3_i()];
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      private function _FeatureScreenItemRenderer_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.width = 230;
         _loc1_.height = 294;
         _loc1_.id = "stepImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepImage = _loc1_;
         BindingManager.executeBindings(this,"stepImage",this.stepImage);
         return _loc1_;
      }
      
      private function _FeatureScreenItemRenderer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FeatureScreenItemRenderer_LocaLabel1_i()];
         _loc1_.id = "stepHeaderGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepHeaderGroup = _loc1_;
         BindingManager.executeBindings(this,"stepHeaderGroup",this.stepHeaderGroup);
         return _loc1_;
      }
      
      private function _FeatureScreenItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.visible = false;
         _loc1_.styleName = "featureBubbleHead";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "stepHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepHeader = _loc1_;
         BindingManager.executeBindings(this,"stepHeader",this.stepHeader);
         return _loc1_;
      }
      
      private function _FeatureScreenItemRenderer_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FeatureScreenItemRenderer_LocaLabel2_i()];
         _loc1_.id = "stepTextGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepTextGroup = _loc1_;
         BindingManager.executeBindings(this,"stepTextGroup",this.stepTextGroup);
         return _loc1_;
      }
      
      private function _FeatureScreenItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.visible = false;
         _loc1_.styleName = "featureBubbleText";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "stepText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepText = _loc1_;
         BindingManager.executeBindings(this,"stepText",this.stepText);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : Group
      {
         return this._951530617content;
      }
      
      public function set content(param1:Group) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepHeader() : LocaLabel
      {
         return this._1926591367stepHeader;
      }
      
      public function set stepHeader(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1926591367stepHeader;
         if(_loc2_ !== param1)
         {
            this._1926591367stepHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepHeaderGroup() : Group
      {
         return this._702194298stepHeaderGroup;
      }
      
      public function set stepHeaderGroup(param1:Group) : void
      {
         var _loc2_:Object = this._702194298stepHeaderGroup;
         if(_loc2_ !== param1)
         {
            this._702194298stepHeaderGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepHeaderGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepImage() : BriskMCDynaLib
      {
         return this._1324487151stepImage;
      }
      
      public function set stepImage(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._1324487151stepImage;
         if(_loc2_ !== param1)
         {
            this._1324487151stepImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepText() : LocaLabel
      {
         return this._1428519449stepText;
      }
      
      public function set stepText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1428519449stepText;
         if(_loc2_ !== param1)
         {
            this._1428519449stepText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepTextGroup() : Group
      {
         return this._2013131750stepTextGroup;
      }
      
      public function set stepTextGroup(param1:Group) : void
      {
         var _loc2_:Object = this._2013131750stepTextGroup;
         if(_loc2_ !== param1)
         {
            this._2013131750stepTextGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepTextGroup",_loc2_,param1));
            }
         }
      }
   }
}

