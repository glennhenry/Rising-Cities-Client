package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.SecurityStatusComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class SecurityStatusCheckItemRenderer extends ItemRenderer
   {
      
      private var _93494179badge:BriskImageDynaLib;
      
      private var _3016401base:BriskImageDynaLib;
      
      private var _94627080check:BriskImageDynaLib;
      
      private var _1674318617divider:BriskImageDynaLib;
      
      private var _722296940securityLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:SecurityStatusComponentVo;
      
      private var _isDirty:Boolean;
      
      private var _labelText:String;
      
      public function SecurityStatusCheckItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SecurityStatusCheckItemRenderer_HGroup1_c()];
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
         if(param1 is SecurityStatusComponentVo)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               this._data = param1 as SecurityStatusComponentVo;
               this._isDirty = true;
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            var _temp_2:* = this.check;
            this.check.visible = false;
            _temp_2.includeInLayout = false;
            this.base.dynaLibName = "gui_popups_emergencyBook";
            if(this._data.showChecks)
            {
               this._labelText = this._data.actualGrade + " / " + this._data.requiredGrade;
               this.check.dynaLibName = "gui_infield_gui_infolayer";
               if(this._data.requiredGrade > 0 && this._data.requiredGrade <= this._data.actualGrade)
               {
                  this.check.dynaBmpSourceName = "checkmark_green_small";
                  this.base.dynaBmpSourceName = "batchbase_green";
                  this.securityLabel.setStyle("styleName","securityPos");
               }
               else
               {
                  this.check.dynaBmpSourceName = "checkmark_grey_small";
                  this.base.dynaBmpSourceName = "batchbase_red";
                  this.securityLabel.setStyle("styleName","securityNeg");
               }
               var _temp_4:* = this.check;
               var _loc1_:Boolean;
               this.check.visible = _loc1_ = true;
               _temp_4.includeInLayout = false;
            }
            else
            {
               this._labelText = this._data.actualGrade.toString();
               if(this._data.actualGrade > 0)
               {
                  this.base.dynaBmpSourceName = "batchbase_green";
                  this.securityLabel.setStyle("styleName","securityPos");
               }
               else
               {
                  this.base.dynaBmpSourceName = "batchbase_red";
                  this.securityLabel.setStyle("styleName","securityNeg");
               }
            }
            this.securityLabel.text = this._labelText;
            this.badge.dynaLibName = "gui_infield_gui_infolayer";
            if(this._data.department == ServerTagConstants.FIRE_DEPARTMENT)
            {
               this.badge.dynaBmpSourceName = "badge_fire";
            }
            else if(this._data.department == ServerTagConstants.POLICE_DEPARTMENT)
            {
               this.badge.dynaBmpSourceName = "badge_police";
            }
            else if(this._data.department == ServerTagConstants.HOSPITAL)
            {
               this.badge.dynaBmpSourceName = "badge_hospital";
            }
            this.divider.visible = !this._data.lastInList;
         }
      }
      
      private function _SecurityStatusCheckItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SecurityStatusCheckItemRenderer_VGroup1_c(),this._SecurityStatusCheckItemRenderer_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._SecurityStatusCheckItemRenderer_Group1_c(),this._SecurityStatusCheckItemRenderer_Group2_c(),this._SecurityStatusCheckItemRenderer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._SecurityStatusCheckItemRenderer_BriskImageDynaLib1_i(),this._SecurityStatusCheckItemRenderer_VGroup2_c(),this._SecurityStatusCheckItemRenderer_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "batchbase_green";
         _loc1_.top = 15;
         _loc1_.id = "base";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.base = _loc1_;
         BindingManager.executeBindings(this,"base",this.base);
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SecurityStatusCheckItemRenderer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "badge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.badge = _loc1_;
         BindingManager.executeBindings(this,"badge",this.badge);
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.right = -5;
         _loc1_.id = "check";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.check = _loc1_;
         BindingManager.executeBindings(this,"check",this.check);
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SecurityStatusCheckItemRenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "securityPos";
         _loc1_.id = "securityLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.securityLabel = _loc1_;
         BindingManager.executeBindings(this,"securityLabel",this.securityLabel);
         return _loc1_;
      }
      
      private function _SecurityStatusCheckItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "good_divider";
         _loc1_.height = 70;
         _loc1_.id = "divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.divider = _loc1_;
         BindingManager.executeBindings(this,"divider",this.divider);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get badge() : BriskImageDynaLib
      {
         return this._93494179badge;
      }
      
      public function set badge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._93494179badge;
         if(_loc2_ !== param1)
         {
            this._93494179badge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get base() : BriskImageDynaLib
      {
         return this._3016401base;
      }
      
      public function set base(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3016401base;
         if(_loc2_ !== param1)
         {
            this._3016401base = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"base",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get check() : BriskImageDynaLib
      {
         return this._94627080check;
      }
      
      public function set check(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._94627080check;
         if(_loc2_ !== param1)
         {
            this._94627080check = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"check",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get divider() : BriskImageDynaLib
      {
         return this._1674318617divider;
      }
      
      public function set divider(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1674318617divider;
         if(_loc2_ !== param1)
         {
            this._1674318617divider = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"divider",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get securityLabel() : LocaLabel
      {
         return this._722296940securityLabel;
      }
      
      public function set securityLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._722296940securityLabel;
         if(_loc2_ !== param1)
         {
            this._722296940securityLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityLabel",_loc2_,param1));
            }
         }
      }
   }
}

