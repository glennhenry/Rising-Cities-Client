package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
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
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.DepartmentProfessionalComponentVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class DepartmentProfessionalComponent extends Group
   {
      
      private var _109532659slot1:DepartmentProfessionalSlotCheckComponent;
      
      private var _109532660slot2:DepartmentProfessionalSlotCheckComponent;
      
      private var _109532661slot3:DepartmentProfessionalSlotCheckComponent;
      
      private var _109532662slot4:DepartmentProfessionalSlotCheckComponent;
      
      private var _109532663slot5:DepartmentProfessionalSlotCheckComponent;
      
      private var _109532664slot6:DepartmentProfessionalSlotCheckComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:Vector.<DepartmentProfessionalComponentVo>;
      
      private var _isDirty:Boolean;
      
      private var _slotVector:Vector.<DepartmentProfessionalSlotCheckComponent>;
      
      public function DepartmentProfessionalComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._DepartmentProfessionalComponent_VGroup1_c()];
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
      
      public function set data(param1:Vector.<DepartmentProfessionalComponentVo>) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:int = 0;
         super.commitProperties();
         if(this._data && this._isDirty && Boolean(this.slotVector))
         {
            this._isDirty = false;
            if(this._data.length)
            {
               _loc1_ = 0;
               while(_loc1_ < this._data.length)
               {
                  if(Boolean(this._data[_loc1_]) && Boolean(this.slotVector[_loc1_]))
                  {
                     this.slotVector[_loc1_].data = this._data[_loc1_];
                     var _temp_4:* = this.slotVector[_loc1_];
                     this.slotVector[_loc1_].visible = true;
                     _temp_4.includeInLayout = true;
                  }
                  _loc1_++;
               }
            }
         }
      }
      
      private function get slotVector() : Vector.<DepartmentProfessionalSlotCheckComponent>
      {
         if(!this._slotVector)
         {
            this._slotVector = new Vector.<DepartmentProfessionalSlotCheckComponent>();
            this._slotVector.push(this.slot1,this.slot2,this.slot3,this.slot4,this.slot5,this.slot6);
         }
         return this._slotVector;
      }
      
      private function _DepartmentProfessionalComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._DepartmentProfessionalComponent_HGroup1_c(),this._DepartmentProfessionalComponent_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentProfessionalComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 15;
         _loc1_.mxmlContent = [this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent1_i(),this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent2_i(),this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent1_i() : DepartmentProfessionalSlotCheckComponent
      {
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "slot1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot1 = _loc1_;
         BindingManager.executeBindings(this,"slot1",this.slot1);
         return _loc1_;
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent2_i() : DepartmentProfessionalSlotCheckComponent
      {
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "slot2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot2 = _loc1_;
         BindingManager.executeBindings(this,"slot2",this.slot2);
         return _loc1_;
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent3_i() : DepartmentProfessionalSlotCheckComponent
      {
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "slot3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot3 = _loc1_;
         BindingManager.executeBindings(this,"slot3",this.slot3);
         return _loc1_;
      }
      
      private function _DepartmentProfessionalComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 15;
         _loc1_.mxmlContent = [this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent4_i(),this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent5_i(),this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent4_i() : DepartmentProfessionalSlotCheckComponent
      {
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "slot4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot4 = _loc1_;
         BindingManager.executeBindings(this,"slot4",this.slot4);
         return _loc1_;
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent5_i() : DepartmentProfessionalSlotCheckComponent
      {
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "slot5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot5 = _loc1_;
         BindingManager.executeBindings(this,"slot5",this.slot5);
         return _loc1_;
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent6_i() : DepartmentProfessionalSlotCheckComponent
      {
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "slot6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot6 = _loc1_;
         BindingManager.executeBindings(this,"slot6",this.slot6);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532659slot1;
      }
      
      public function set slot1(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532660slot2;
      }
      
      public function set slot2(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532661slot3;
      }
      
      public function set slot3(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532662slot4;
      }
      
      public function set slot4(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         var _loc2_:Object = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532663slot5;
      }
      
      public function set slot5(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532664slot6;
      }
      
      public function set slot6(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
            }
         }
      }
   }
}

