package net.bigpoint.cityrama.view.featureScreens.ui.components
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.featureScreens.vo.BigFeatureScreenVO;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class BigFeatureScreenPopup extends PaperPopupWindow
   {
      
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
      
      private var _951530617content:Group;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1006495386imageContainer:BriskMCDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean;
      
      private var _featureData:BigFeatureScreenVO;
      
      private var _textSet:Boolean;
      
      private var _titles:Vector.<String>;
      
      private var _texts:Vector.<String>;
      
      public function BigFeatureScreenPopup()
      {
         super();
         mx_internal::_document = this;
         this.showBackButton = false;
         this.width = 785;
         this.height = 430;
         this.styleName = "featureScreen";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._BigFeatureScreenPopup_Array1_c);
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
      
      public function set data(param1:BigFeatureScreenVO) : void
      {
         if(!RandomUtilities.isEqual(param1,this._featureData))
         {
            this._isDirty = true;
            this._featureData = param1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._featureData) && this._isDirty)
         {
            this.content.visible = false;
            this._isDirty = false;
            if(this._featureData)
            {
               this.title = this._featureData.popuptitle;
               this.flavorText.text = this._featureData.popupflavour;
               this.imageContainer.dynaLibName = this._featureData.dynaLibName;
               this.imageContainer.dynaMCSourceName = this._featureData.dynaMCName;
               this._titles = this._featureData.titles;
               this._texts = this._featureData.texts;
               if(!this._textSet)
               {
                  this.imageContainer.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.setTextPosition);
               }
               if(this._featureData.layerStyleName != "")
               {
                  this.setStyle("styleName",this._featureData.layerStyleName);
               }
            }
            else
            {
               this.imageContainer.dynaLibName = null;
               this.imageContainer.dynaMCSourceName = null;
               this.visible = false;
            }
         }
      }
      
      private function setTextPosition(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:Group = null;
         var _loc7_:LocaLabel = null;
         this.imageContainer.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.setTextPosition);
         var _loc3_:int = 0;
         while(!_loc2_)
         {
            _loc2_ = true;
            _loc4_ = null;
            _loc5_ = null;
            if(this._texts.length > _loc3_)
            {
               _loc4_ = this.imageContainer.movieClip.getChildByName("textbox" + (_loc3_ + 1).toString());
               _loc2_ = false;
            }
            if(this._titles.length > _loc3_)
            {
               _loc5_ = this.imageContainer.movieClip.getChildByName("titlebox" + (_loc3_ + 1).toString());
               _loc2_ = false;
            }
            if(_loc5_)
            {
               _loc5_.visible = false;
               _loc5_.alpha = 0;
            }
            if(_loc4_)
            {
               _loc4_.visible = false;
               _loc4_.alpha = 0;
            }
            this.imageContainer.invalidateDisplayList();
            if(_loc5_)
            {
               _loc6_ = new Group();
               _loc7_ = new LocaLabel();
               this.content.addElement(_loc6_);
               _loc7_.styleName = "featureBubbleHead";
               _loc7_.setStyle("verticalAlign","middle");
               _loc7_.width = _loc5_.width;
               _loc7_.height = _loc5_.height;
               _loc6_.addElement(_loc7_);
               _loc6_.width = _loc5_.width;
               _loc6_.height = _loc5_.height;
               _loc6_.x = _loc5_.x;
               _loc6_.y = _loc5_.y + 28;
               _loc7_.text = this._titles[_loc3_];
               _loc7_.visible = true;
            }
            if(_loc4_)
            {
               _loc6_ = new Group();
               this.content.addElementAt(_loc6_,this.content.numElements);
               _loc7_ = new LocaLabel();
               _loc7_.styleName = "featureBubbleText";
               _loc7_.setStyle("verticalAlign","middle");
               _loc7_.width = _loc4_.width;
               _loc7_.height = _loc4_.height;
               _loc6_.addElement(_loc7_);
               _loc6_.width = _loc4_.width;
               _loc6_.height = _loc4_.height;
               _loc6_.x = _loc4_.x;
               _loc6_.y = _loc4_.y + 28;
               _loc7_.text = this._texts[_loc3_];
               _loc7_.visible = true;
            }
            _loc3_++;
         }
         this.content.visible = true;
         this._textSet = true;
      }
      
      private function _BigFeatureScreenPopup_Array1_c() : Array
      {
         return [this._BigFeatureScreenPopup_Group1_i()];
      }
      
      private function _BigFeatureScreenPopup_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 380;
         _loc1_.top = 30;
         _loc1_.left = -15;
         _loc1_.mxmlContent = [this._BigFeatureScreenPopup_Group2_c(),this._BigFeatureScreenPopup_HGroup1_c(),this._BigFeatureScreenPopup_BriskMCDynaLib1_i()];
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      private function _BigFeatureScreenPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 30;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BigFeatureScreenPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 95;
         _loc1_.height = 32;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = -4;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._BigFeatureScreenPopup_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BigFeatureScreenPopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "flavorText";
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _BigFeatureScreenPopup_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.top = 28;
         _loc1_.id = "imageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.imageContainer = _loc1_;
         BindingManager.executeBindings(this,"imageContainer",this.imageContainer);
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
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc2_ !== param1)
         {
            this._1684755691flavorText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imageContainer() : BriskMCDynaLib
      {
         return this._1006495386imageContainer;
      }
      
      public function set imageContainer(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._1006495386imageContainer;
         if(_loc2_ !== param1)
         {
            this._1006495386imageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imageContainer",_loc2_,param1));
            }
         }
      }
   }
}

