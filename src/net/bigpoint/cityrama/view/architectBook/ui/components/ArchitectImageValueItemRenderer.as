package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageValueVO;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ArchitectImageValueItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _2008488570ImageContainer:HGroup;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var _816216256visual:BriskImageDynaLib;
      
      private var _1595195676visualOK:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ArchitectImageValueItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.percentWidth = 100;
         this.mxmlContent = [this._ArchitectImageValueItemRenderer_HGroup1_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"hovered",
            "overrides":[]
         }),new State({
            "name":"selected",
            "overrides":[]
         })];
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
         var _loc2_:BlueprintImageValueVO = null;
         super.data = param1;
         if(param1)
         {
            _loc2_ = param1 as BlueprintImageValueVO;
            if(_loc2_.visualName == "")
            {
               this.visual.visible = this.visual.includeInLayout = false;
            }
            else
            {
               this.visual.dynaLibName = _loc2_.visualLibName;
               this.visual.dynaBmpSourceName = _loc2_.visualName;
               this.visual.visible = this.visual.includeInLayout = true;
            }
            if(_loc2_.textLabel == "")
            {
               this.textLabel.visible = false;
            }
            else
            {
               this.textLabel.visible = true;
               this.textLabel.text = _loc2_.textLabel;
               if(_loc2_.valueFontSize != 0)
               {
                  this.textLabel.setStyle("fontsize",_loc2_.valueFontSize);
               }
               if(_loc2_.valueColor != 0)
               {
                  this.textLabel.setStyle("color",_loc2_.valueColor);
               }
            }
            if(_loc2_.visualOKName != "")
            {
               this.visualOK.dynaLibName = _loc2_.visualOKLibName;
               this.visualOK.dynaBmpSourceName = _loc2_.visualOKName;
               this.visualOK.visible = true;
               this.visualOK.visible = this.visualOK.includeInLayout = true;
            }
            else
            {
               this.visualOK.visible = false;
               this.visualOK.visible = this.visualOK.includeInLayout = false;
            }
            if(_loc2_.effectType)
            {
               if(_loc2_.effectType == MainLayerProxy.MOOD)
               {
                  this.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.mood");
               }
               else if(_loc2_.effectType == MainLayerProxy.ENERGY)
               {
                  this.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.energy");
               }
            }
         }
      }
      
      private function _ArchitectImageValueItemRenderer_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingBottom = 4;
         _loc1_.width = 220;
         _loc1_.mxmlContent = [this._ArchitectImageValueItemRenderer_LocaLabel1_i(),this._ArchitectImageValueItemRenderer_BriskImageDynaLib1_i(),this._ArchitectImageValueItemRenderer_BriskImageDynaLib2_i()];
         _loc1_.id = "ImageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ImageContainer = _loc1_;
         BindingManager.executeBindings(this,"ImageContainer",this.ImageContainer);
         return _loc1_;
      }
      
      private function _ArchitectImageValueItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 200;
         _loc1_.styleName = "fontABlack";
         _loc1_.setStyle("color",5726299);
         _loc1_.setStyle("textAlign","left");
         _loc1_.setStyle("fontSize",15);
         _loc1_.id = "textLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textLabel = _loc1_;
         BindingManager.executeBindings(this,"textLabel",this.textLabel);
         return _loc1_;
      }
      
      private function _ArchitectImageValueItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.visible = false;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.includeInLayout = false;
         _loc1_.dynaBmpSourceName = "cc_icon_medium";
         _loc1_.id = "visual";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.visual = _loc1_;
         BindingManager.executeBindings(this,"visual",this.visual);
         return _loc1_;
      }
      
      private function _ArchitectImageValueItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_green";
         _loc1_.id = "visualOK";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.visualOK = _loc1_;
         BindingManager.executeBindings(this,"visualOK",this.visualOK);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get ImageContainer() : HGroup
      {
         return this._2008488570ImageContainer;
      }
      
      public function set ImageContainer(param1:HGroup) : void
      {
         var _loc2_:Object = this._2008488570ImageContainer;
         if(_loc2_ !== param1)
         {
            this._2008488570ImageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ImageContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textLabel() : LocaLabel
      {
         return this._1055687225textLabel;
      }
      
      public function set textLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1055687225textLabel;
         if(_loc2_ !== param1)
         {
            this._1055687225textLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get visual() : BriskImageDynaLib
      {
         return this._816216256visual;
      }
      
      public function set visual(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._816216256visual;
         if(_loc2_ !== param1)
         {
            this._816216256visual = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visual",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get visualOK() : BriskImageDynaLib
      {
         return this._1595195676visualOK;
      }
      
      public function set visualOK(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1595195676visualOK;
         if(_loc2_ !== param1)
         {
            this._1595195676visualOK = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visualOK",_loc2_,param1));
            }
         }
      }
   }
}

