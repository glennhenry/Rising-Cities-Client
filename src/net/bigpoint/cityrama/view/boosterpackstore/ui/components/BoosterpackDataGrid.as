package net.bigpoint.cityrama.view.boosterpackstore.ui.components
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
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.skins.BoosterpackListSkin;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.popup.ui.components.FeatureLockedScreen;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class BoosterpackDataGrid extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1177280081itemList:List;
      
      private var _2016210966lockedScreen:FeatureLockedScreen;
      
      private var _1583055797sublevelItemList:List;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var _878929322uiInfolayerAlignmentLine2:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:Vector.<BoosterpackVo>;
      
      private var _isDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BoosterpackDataGrid()
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
         bindings = this._BoosterpackDataGrid_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackDataGridWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return BoosterpackDataGrid[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._BoosterpackDataGrid_VGroup1_c(),this._BoosterpackDataGrid_FeatureLockedScreen1_i()];
         this.addEventListener("creationComplete",this.___BoosterpackDataGrid_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         BoosterpackDataGrid._watcherSetupUtil = param1;
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
      
      private function handleCreationComplete() : void
      {
         this.flavorText.text = ResourceManager.getInstance().getString(String("rcl.booklayer.boosterpackStore"),String("rcl.booklayer.boosterpackStore.flavour"));
      }
      
      public function set data(param1:Vector.<BoosterpackVo>) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      public function locked(param1:int) : void
      {
         var _temp_1:* = this;
         this.mouseChildren = false;
         _temp_1.mouseEnabled = false;
         var _temp_2:* = this.lockedScreen;
         var _loc2_:Boolean;
         this.lockedScreen.visible = _loc2_ = true;
         _temp_2.includeInLayout = false;
         this.lockedScreen.textLabel.text = LocaUtils.getString("rcl.booklayer.lockedFeature","rcl.booklayer.lockedFeature.boosterpackstore",[param1]);
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ArrayCollection = null;
         var _loc2_:ArrayCollection = null;
         var _loc3_:BoosterpackVo = null;
         var _loc4_:ConfigOutputDTO = null;
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            _loc1_ = new ArrayCollection();
            _loc2_ = new ArrayCollection();
            for each(_loc3_ in this._data)
            {
               if(_loc3_.type == BoosterpackBookProxy.SUBLEVEL_BOOSTER)
               {
                  _loc2_.addItem(_loc3_);
               }
               else
               {
                  _loc1_.addItem(_loc3_);
               }
            }
            _loc4_ = new ConfigOutputDTO({
               "t":"RESOURCE",
               "cid":1,
               "o":1
            });
            this.sublevelItemList.dataProvider = _loc2_;
            this.itemList.dataProvider = _loc1_;
         }
      }
      
      private function _BoosterpackDataGrid_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 6;
         _loc1_.paddingRight = 6;
         _loc1_.percentHeight = 100;
         _loc1_.bottom = 10;
         _loc1_.gap = 10;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._BoosterpackDataGrid_LocaLabel1_i(),this._BoosterpackDataGrid_Group2_c(),this._BoosterpackDataGrid_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 700;
         _loc1_.height = 25;
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
      
      private function _BoosterpackDataGrid_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 150;
         _loc1_.width = 470;
         _loc1_.mxmlContent = [this._BoosterpackDataGrid_List1_i(),this._BoosterpackDataGrid_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._BoosterpackDataGrid_ClassFactory1_c();
         _loc1_.height = 150;
         _loc1_.width = 470;
         _loc1_.horizontalCenter = 0;
         _loc1_.setStyle("skinClass",BoosterpackListSkin);
         _loc1_.id = "sublevelItemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sublevelItemList = _loc1_;
         BindingManager.executeBindings(this,"sublevelItemList",this.sublevelItemList);
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = BoosterpackItemRenderer;
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.top = 150;
         _loc1_.right = 0;
         _loc1_.lineId = 4;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 150;
         _loc1_.width = 728;
         _loc1_.mxmlContent = [this._BoosterpackDataGrid_List2_i(),this._BoosterpackDataGrid_UiInfolayerAlignmentLine2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_List2_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._BoosterpackDataGrid_ClassFactory2_c();
         _loc1_.height = 150;
         _loc1_.width = 728;
         _loc1_.setStyle("skinClass",BoosterpackListSkin);
         _loc1_.id = "itemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemList = _loc1_;
         BindingManager.executeBindings(this,"itemList",this.itemList);
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = BoosterpackItemRenderer;
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_UiInfolayerAlignmentLine2_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.lineId = 5;
         _loc1_.id = "uiInfolayerAlignmentLine2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine2 = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine2",this.uiInfolayerAlignmentLine2);
         return _loc1_;
      }
      
      private function _BoosterpackDataGrid_FeatureLockedScreen1_i() : FeatureLockedScreen
      {
         var _loc1_:FeatureLockedScreen = new FeatureLockedScreen();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.visible = false;
         _loc1_.top = -10;
         _loc1_.includeInLayout = false;
         _loc1_.id = "lockedScreen";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockedScreen = _loc1_;
         BindingManager.executeBindings(this,"lockedScreen",this.lockedScreen);
         return _loc1_;
      }
      
      public function ___BoosterpackDataGrid_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      private function _BoosterpackDataGrid_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine.alignment");
         result[1] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLine2.alignment");
         return result;
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
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _loc2_:Object = this._1177280081itemList;
         if(_loc2_ !== param1)
         {
            this._1177280081itemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedScreen() : FeatureLockedScreen
      {
         return this._2016210966lockedScreen;
      }
      
      public function set lockedScreen(param1:FeatureLockedScreen) : void
      {
         var _loc2_:Object = this._2016210966lockedScreen;
         if(_loc2_ !== param1)
         {
            this._2016210966lockedScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedScreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sublevelItemList() : List
      {
         return this._1583055797sublevelItemList;
      }
      
      public function set sublevelItemList(param1:List) : void
      {
         var _loc2_:Object = this._1583055797sublevelItemList;
         if(_loc2_ !== param1)
         {
            this._1583055797sublevelItemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublevelItemList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc2_ !== param1)
         {
            this._1218573432uiInfolayerAlignmentLine = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine2() : UiInfolayerAlignmentLine
      {
         return this._878929322uiInfolayerAlignmentLine2;
      }
      
      public function set uiInfolayerAlignmentLine2(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._878929322uiInfolayerAlignmentLine2;
         if(_loc2_ !== param1)
         {
            this._878929322uiInfolayerAlignmentLine2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine2",_loc2_,param1));
            }
         }
      }
   }
}

