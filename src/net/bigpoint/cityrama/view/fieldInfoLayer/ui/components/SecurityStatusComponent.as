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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.SecurityStatusComponentVo;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins.SecurityStatusCheckSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.List;
   
   public class SecurityStatusComponent extends Group
   {
      
      private var _807992318securityList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean;
      
      private var _data:Vector.<SecurityStatusComponentVo>;
      
      public function SecurityStatusComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SecurityStatusComponent_List1_i()];
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
      
      public function set data(param1:Vector.<SecurityStatusComponentVo>) : void
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
         var _loc1_:ArrayCollection = null;
         var _loc2_:SecurityStatusComponentVo = null;
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            _loc1_ = new ArrayCollection();
            if(this._data.length > 1)
            {
               this._data[this._data.length - 1].lastInList = true;
            }
            else
            {
               this._data[0].lastInList = true;
            }
            for each(_loc2_ in this._data)
            {
               _loc1_.addItem(_loc2_);
            }
            this.securityList.dataProvider = _loc1_;
         }
      }
      
      private function _SecurityStatusComponent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.itemRenderer = this._SecurityStatusComponent_ClassFactory1_c();
         _loc1_.setStyle("skinClass",SecurityStatusCheckSkin);
         _loc1_.id = "securityList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.securityList = _loc1_;
         BindingManager.executeBindings(this,"securityList",this.securityList);
         return _loc1_;
      }
      
      private function _SecurityStatusComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SecurityStatusCheckItemRenderer;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get securityList() : List
      {
         return this._807992318securityList;
      }
      
      public function set securityList(param1:List) : void
      {
         var _loc2_:Object = this._807992318securityList;
         if(_loc2_ !== param1)
         {
            this._807992318securityList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityList",_loc2_,param1));
            }
         }
      }
   }
}

