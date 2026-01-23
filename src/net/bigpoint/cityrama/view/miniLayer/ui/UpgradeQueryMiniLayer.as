package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flashx.textLayout.conversion.TextConverter;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.miniLayer.vo.UpgradeMiniLayerVo;
   import net.bigpoint.cityrama.view.architectBook.ui.components.ArchitectNeedItemRenderer;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectNeedsSkin;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponent;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponentMultiline;
   import net.bigpoint.cityrama.view.common.components.PriceComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class UpgradeQueryMiniLayer extends MiniLayerWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _770913084confirmUpgrade:MultistateButton;
      
      private var _1253508016costComponent:StickyNoteComponent;
      
      private var _450449222costHeader:PostitHeaderComponent;
      
      private var _94849606costs:PriceComponent;
      
      private var _1365864848denyUpgrade:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1604340842materialComponent:StickyNoteComponent;
      
      private var _1935639916materialHeader:PostitHeaderComponentMultiline;
      
      private var _2115854747materialList:List;
      
      private var _391232536postIts:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _upgradeData:UpgradeMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function UpgradeQueryMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpgradeQueryMiniLayer_Array1_c);
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
         if(this._upgradeData)
         {
            this.invertDepth();
            this.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.title"));
            if(this._upgradeData.typeOfBuilding == UpgradeMiniLayerVo.BUILDING_NORMAL)
            {
               this.flavourText.textFlow = TextConverter.importToFlow(ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.flavour")),TextConverter.TEXT_FIELD_HTML_FORMAT);
            }
            else if(this._upgradeData.typeOfBuilding == UpgradeMiniLayerVo.BUILDING_COMMERCIAL)
            {
               this.flavourText.textFlow = TextConverter.importToFlow(ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.flavourCommercial")),TextConverter.TEXT_FIELD_HTML_FORMAT);
            }
            this.confirmUpgrade.label = ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.buttonOk"));
            this.denyUpgrade.label = ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.buttonAbort"));
            this.costHeader.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.costs"));
            this.materialHeader.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.resources"));
            this.costs.affordable = this._upgradeData.affordable;
            this.costs.priceLabel = LocaUtils.getThousendSeperatedNumber(this._upgradeData.costs);
            this.materialList.dataProvider = this._upgradeData.materialList;
            this.confirmUpgrade.enabled = this._upgradeData.affordable;
            this.setTooltips();
            this._isDirty = false;
         }
      }
      
      private function setTooltips() : void
      {
         this.confirmUpgrade.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.upgrade.upgradeButton"));
         var _loc1_:String = ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.upgrade.products.left"));
         var _loc2_:String = ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.upgrade.products.right"));
         this.materialList.setStyle("tooltipLeft",_loc1_);
         this.materialList.setStyle("tooltipRight",_loc2_);
      }
      
      public function setData(param1:UpgradeMiniLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._upgradeData))
         {
            this._isDirty = true;
            this._upgradeData = param1;
            this.invalidateProperties();
         }
      }
      
      private function invertDepth() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            UIComponent(this.postIts.getChildAt(_loc1_)).depth = 1 - _loc1_;
            _loc1_++;
         }
         this.costComponent.rightTape.setStyle("top",-5);
         this.costComponent.rightTape.setStyle("bottom",-5);
         this.costComponent.rightTape.minHeight = 125;
         this.costComponent.leftTape.setStyle("top",5);
         this.costComponent.leftTape.setStyle("bottom",5);
         this.materialComponent.rightTape.setStyle("top",24);
         this.materialComponent.rightTape.setStyle("bottom",24);
      }
      
      private function _UpgradeQueryMiniLayer_Array1_c() : Array
      {
         return [this._UpgradeQueryMiniLayer_VGroup1_i()];
      }
      
      private function _UpgradeQueryMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 10;
         _loc1_.paddingBottom = 45;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = -20;
         _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_LocaLabel1_i(),this._UpgradeQueryMiniLayer_HGroup1_i(),this._UpgradeQueryMiniLayer_Group2_c(),this._UpgradeQueryMiniLayer_HGroup3_c()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.height = 45;
         _loc1_.percentWidth = 85;
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
      
      private function _UpgradeQueryMiniLayer_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = -23;
         _loc1_.top = -45;
         _loc1_.verticalAlign = "middle";
         _loc1_.height = 170;
         _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_StickyNoteComponent1_i(),this._UpgradeQueryMiniLayer_StickyNoteComponent2_i()];
         _loc1_.id = "postIts";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.postIts = _loc1_;
         BindingManager.executeBindings(this,"postIts",this.postIts);
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 220;
         _loc1_.height = 115;
         _loc1_.tapeLeft = true;
         _loc1_.tapeRight = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpgradeQueryMiniLayer_Array4_c);
         _loc1_.id = "costComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costComponent = _loc1_;
         BindingManager.executeBindings(this,"costComponent",this.costComponent);
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_Array4_c() : Array
      {
         return [this._UpgradeQueryMiniLayer_VGroup2_c()];
      }
      
      private function _UpgradeQueryMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_PostitHeaderComponent1_i(),this._UpgradeQueryMiniLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         _loc1_.id = "costHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costHeader = _loc1_;
         BindingManager.executeBindings(this,"costHeader",this.costHeader);
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_Group1_c(),this._UpgradeQueryMiniLayer_PriceComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 22;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_PriceComponent1_i() : PriceComponent
      {
         var _loc1_:PriceComponent = new PriceComponent();
         _loc1_.id = "costs";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costs = _loc1_;
         BindingManager.executeBindings(this,"costs",this.costs);
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_StickyNoteComponent2_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 240;
         _loc1_.height = 135;
         _loc1_.tapeRight = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpgradeQueryMiniLayer_Array7_c);
         _loc1_.id = "materialComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.materialComponent = _loc1_;
         BindingManager.executeBindings(this,"materialComponent",this.materialComponent);
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_Array7_c() : Array
      {
         return [this._UpgradeQueryMiniLayer_VGroup3_c()];
      }
      
      private function _UpgradeQueryMiniLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_PostitHeaderComponentMultiline1_i(),this._UpgradeQueryMiniLayer_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_PostitHeaderComponentMultiline1_i() : PostitHeaderComponentMultiline
      {
         var _loc1_:PostitHeaderComponentMultiline = new PostitHeaderComponentMultiline();
         _loc1_.id = "materialHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.materialHeader = _loc1_;
         BindingManager.executeBindings(this,"materialHeader",this.materialHeader);
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._UpgradeQueryMiniLayer_ClassFactory1_c();
         _loc1_.setStyle("skinClass",ArchitectNeedsSkin);
         _loc1_.id = "materialList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.materialList = _loc1_;
         BindingManager.executeBindings(this,"materialList",this.materialList);
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ArchitectNeedItemRenderer;
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 25;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 24;
         _loc1_.top = -30;
         _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_MultistateButton1_i(),this._UpgradeQueryMiniLayer_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "icon_check";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.styleName = "confirm";
         _loc1_.id = "confirmUpgrade";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.confirmUpgrade = _loc1_;
         BindingManager.executeBindings(this,"confirmUpgrade",this.confirmUpgrade);
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "icon_cancel";
         _loc1_.styleName = "abort";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.id = "denyUpgrade";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.denyUpgrade = _loc1_;
         BindingManager.executeBindings(this,"denyUpgrade",this.denyUpgrade);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmUpgrade() : MultistateButton
      {
         return this._770913084confirmUpgrade;
      }
      
      public function set confirmUpgrade(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._770913084confirmUpgrade;
         if(_loc2_ !== param1)
         {
            this._770913084confirmUpgrade = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmUpgrade",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costComponent() : StickyNoteComponent
      {
         return this._1253508016costComponent;
      }
      
      public function set costComponent(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._1253508016costComponent;
         if(_loc2_ !== param1)
         {
            this._1253508016costComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costHeader() : PostitHeaderComponent
      {
         return this._450449222costHeader;
      }
      
      public function set costHeader(param1:PostitHeaderComponent) : void
      {
         var _loc2_:Object = this._450449222costHeader;
         if(_loc2_ !== param1)
         {
            this._450449222costHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costs() : PriceComponent
      {
         return this._94849606costs;
      }
      
      public function set costs(param1:PriceComponent) : void
      {
         var _loc2_:Object = this._94849606costs;
         if(_loc2_ !== param1)
         {
            this._94849606costs = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costs",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get denyUpgrade() : MultistateButton
      {
         return this._1365864848denyUpgrade;
      }
      
      public function set denyUpgrade(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1365864848denyUpgrade;
         if(_loc2_ !== param1)
         {
            this._1365864848denyUpgrade = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"denyUpgrade",_loc2_,param1));
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
      public function get materialComponent() : StickyNoteComponent
      {
         return this._1604340842materialComponent;
      }
      
      public function set materialComponent(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._1604340842materialComponent;
         if(_loc2_ !== param1)
         {
            this._1604340842materialComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialHeader() : PostitHeaderComponentMultiline
      {
         return this._1935639916materialHeader;
      }
      
      public function set materialHeader(param1:PostitHeaderComponentMultiline) : void
      {
         var _loc2_:Object = this._1935639916materialHeader;
         if(_loc2_ !== param1)
         {
            this._1935639916materialHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialList() : List
      {
         return this._2115854747materialList;
      }
      
      public function set materialList(param1:List) : void
      {
         var _loc2_:Object = this._2115854747materialList;
         if(_loc2_ !== param1)
         {
            this._2115854747materialList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get postIts() : HGroup
      {
         return this._391232536postIts;
      }
      
      public function set postIts(param1:HGroup) : void
      {
         var _loc2_:Object = this._391232536postIts;
         if(_loc2_ !== param1)
         {
            this._391232536postIts = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"postIts",_loc2_,param1));
            }
         }
      }
   }
}

