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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenStepDataVo;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenVo;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.featureScreens.ui.skins.FeatureListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.layouts.HorizontalLayout;
   
   public class FeatureScreenPopup extends PaperPopupWindow
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
      
      private var _377211724featureList:List;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1055224494itemListGroup:HGroup;
      
      private var _1246295935listGroup:HGroup;
      
      private var _865758629pageLabel:LocaLabel;
      
      private var _66047092scrollLeft:DynamicImageButton;
      
      private var _2053120847scrollRight:DynamicImageButton;
      
      private var _226305183scrollerLeft:Group;
      
      private var _1580134914scrollerRight:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _featureData:FeatureScreenVo;
      
      private var _page:int = 1;
      
      private var _maxPage:int;
      
      private var _isDirty:Boolean;
      
      public function FeatureScreenPopup()
      {
         super();
         mx_internal::_document = this;
         this.showBackButton = false;
         this.width = 785;
         this.height = 430;
         this.styleName = "featureScreen";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FeatureScreenPopup_Array1_c);
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
         var _loc1_:ArrayCollection = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super.commitProperties();
         if(Boolean(this._featureData) && this._isDirty)
         {
            this.title = this._featureData.title;
            this.flavorText.text = this._featureData.flavourText;
            this._maxPage = Math.ceil(this._featureData.numberOfSteps / 3);
            _loc1_ = new ArrayCollection();
            _loc2_ = this._page * 3 - 3;
            _loc3_ = _loc2_ + 2;
            if(_loc3_ > this._featureData.numberOfSteps - 1)
            {
               _loc3_ = this._featureData.numberOfSteps - 1;
            }
            while(_loc2_ <= _loc3_)
            {
               _loc1_.addItem(this._featureData.stepData[_loc2_]);
               _loc2_++;
            }
            if(_loc1_.length < 3)
            {
               _loc4_ = 3 - _loc1_.length;
               _loc5_ = 1;
               while(_loc5_ <= _loc4_)
               {
                  _loc1_.addItem(new FeatureScreenStepDataVo(null,null,null,null,true));
                  _loc5_++;
               }
            }
            this.featureList.dataProvider = _loc1_;
            this.checkScroller();
         }
      }
      
      public function set data(param1:FeatureScreenVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._featureData))
         {
            this._isDirty = true;
            this._featureData = param1;
            invalidateProperties();
         }
      }
      
      private function scrollPrev() : void
      {
         --this._page;
         if(this._page <= 0)
         {
            this._page = 1;
         }
         invalidateProperties();
      }
      
      private function scrollNext() : void
      {
         ++this._page;
         if(this._page > this._maxPage)
         {
            this._page = this._maxPage;
         }
         invalidateProperties();
      }
      
      private function checkScroller() : void
      {
         var _temp_1:* = this.scrollLeft;
         this.scrollLeft.enabled = false;
         _temp_1.visible = false;
         var _temp_2:* = this.scrollRight;
         var _loc1_:Boolean;
         this.scrollRight.enabled = _loc1_ = false;
         _temp_2.visible = false;
         if(this._page == 1 && this._maxPage != this._page)
         {
            var _temp_4:* = this.scrollRight;
            this.scrollRight.enabled = _loc1_ = true;
            _temp_4.visible = false;
         }
         if(this._page == this._maxPage && this._page != 1)
         {
            var _temp_6:* = this.scrollLeft;
            this.scrollLeft.enabled = _loc1_ = true;
            _temp_6.visible = false;
         }
         this.setPages();
      }
      
      private function setPages() : void
      {
         var _loc1_:* = "";
         var _loc2_:int = 1;
         while(_loc2_ <= this._maxPage)
         {
            if(_loc2_ == this._page)
            {
               _loc1_ = _loc1_ + "   " + "<FONT Face=\'Arial Black\' Size=\'16\' Color=\'#36696f\' >" + _loc2_ + "</FONT>";
            }
            else
            {
               _loc1_ = _loc1_ + "   " + "<FONT Face=\'Arial Black\' Size=\'12\' Color=\'#666666\'>" + _loc2_ + "</FONT>";
            }
            _loc2_++;
         }
         this.pageLabel.text = _loc1_;
         if(this._maxPage == 1)
         {
            this.pageLabel.visible = false;
         }
         else
         {
            this.pageLabel.visible = true;
         }
      }
      
      private function _FeatureScreenPopup_Array1_c() : Array
      {
         return [this._FeatureScreenPopup_VGroup1_c()];
      }
      
      private function _FeatureScreenPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 740;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._FeatureScreenPopup_Group1_c(),this._FeatureScreenPopup_LocaLabel1_i(),this._FeatureScreenPopup_HGroup1_i(),this._FeatureScreenPopup_Group4_c(),this._FeatureScreenPopup_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 700;
         _loc1_.height = 30;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.maxHeight = 32;
         _loc1_.minHeight = 20;
         _loc1_.styleName = "flavorText";
         _loc1_.text = "";
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 740;
         _loc1_.gap = -8;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FeatureScreenPopup_Group2_i(),this._FeatureScreenPopup_HGroup2_i(),this._FeatureScreenPopup_Group3_i()];
         _loc1_.id = "itemListGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemListGroup = _loc1_;
         BindingManager.executeBindings(this,"itemListGroup",this.itemListGroup);
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 50;
         _loc1_.mxmlContent = [this._FeatureScreenPopup_DynamicImageButton1_i()];
         _loc1_.id = "scrollerLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollerLeft = _loc1_;
         BindingManager.executeBindings(this,"scrollerLeft",this.scrollerLeft);
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listLeft";
         _loc1_.right = 0;
         _loc1_.top = 100;
         _loc1_.addEventListener("click",this.__scrollLeft_click);
         _loc1_.id = "scrollLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollLeft = _loc1_;
         BindingManager.executeBindings(this,"scrollLeft",this.scrollLeft);
         return _loc1_;
      }
      
      public function __scrollLeft_click(param1:MouseEvent) : void
      {
         this.scrollPrev();
      }
      
      private function _FeatureScreenPopup_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.minWidth = 690;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FeatureScreenPopup_List1_i()];
         _loc1_.id = "listGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.listGroup = _loc1_;
         BindingManager.executeBindings(this,"listGroup",this.listGroup);
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._FeatureScreenPopup_ClassFactory1_c();
         _loc1_.layout = this._FeatureScreenPopup_HorizontalLayout1_c();
         _loc1_.setStyle("skinClass",FeatureListSkin);
         _loc1_.id = "featureList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.featureList = _loc1_;
         BindingManager.executeBindings(this,"featureList",this.featureList);
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FeatureScreenItemRenderer;
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         _loc1_.verticalAlign = "middle";
         _loc1_.requestedMaxColumnCount = 3;
         _loc1_.clipAndEnableScrolling = true;
         _loc1_.useVirtualLayout = false;
         _loc1_.requestedMinColumnCount = 1;
         _loc1_.gap = -10;
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 53;
         _loc1_.mxmlContent = [this._FeatureScreenPopup_DynamicImageButton2_i()];
         _loc1_.id = "scrollerRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollerRight = _loc1_;
         BindingManager.executeBindings(this,"scrollerRight",this.scrollerRight);
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listRight";
         _loc1_.left = 0;
         _loc1_.top = 100;
         _loc1_.addEventListener("click",this.__scrollRight_click);
         _loc1_.id = "scrollRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollRight = _loc1_;
         BindingManager.executeBindings(this,"scrollRight",this.scrollRight);
         return _loc1_;
      }
      
      public function __scrollRight_click(param1:MouseEvent) : void
      {
         this.scrollNext();
      }
      
      private function _FeatureScreenPopup_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureScreenPopup_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.id = "pageLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pageLabel = _loc1_;
         BindingManager.executeBindings(this,"pageLabel",this.pageLabel);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get featureList() : List
      {
         return this._377211724featureList;
      }
      
      public function set featureList(param1:List) : void
      {
         var _loc2_:Object = this._377211724featureList;
         if(_loc2_ !== param1)
         {
            this._377211724featureList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featureList",_loc2_,param1));
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
      public function get itemListGroup() : HGroup
      {
         return this._1055224494itemListGroup;
      }
      
      public function set itemListGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1055224494itemListGroup;
         if(_loc2_ !== param1)
         {
            this._1055224494itemListGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemListGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get listGroup() : HGroup
      {
         return this._1246295935listGroup;
      }
      
      public function set listGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1246295935listGroup;
         if(_loc2_ !== param1)
         {
            this._1246295935listGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageLabel() : LocaLabel
      {
         return this._865758629pageLabel;
      }
      
      public function set pageLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._865758629pageLabel;
         if(_loc2_ !== param1)
         {
            this._865758629pageLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeft() : DynamicImageButton
      {
         return this._66047092scrollLeft;
      }
      
      public function set scrollLeft(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._66047092scrollLeft;
         if(_loc2_ !== param1)
         {
            this._66047092scrollLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRight() : DynamicImageButton
      {
         return this._2053120847scrollRight;
      }
      
      public function set scrollRight(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._2053120847scrollRight;
         if(_loc2_ !== param1)
         {
            this._2053120847scrollRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRight",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollerLeft() : Group
      {
         return this._226305183scrollerLeft;
      }
      
      public function set scrollerLeft(param1:Group) : void
      {
         var _loc2_:Object = this._226305183scrollerLeft;
         if(_loc2_ !== param1)
         {
            this._226305183scrollerLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollerLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollerRight() : Group
      {
         return this._1580134914scrollerRight;
      }
      
      public function set scrollerRight(param1:Group) : void
      {
         var _loc2_:Object = this._1580134914scrollerRight;
         if(_loc2_ !== param1)
         {
            this._1580134914scrollerRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollerRight",_loc2_,param1));
            }
         }
      }
   }
}

