package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   import spark.skins.spark.DefaultItemRenderer;
   
   public class ArchitectImageValueSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function ArchitectImageValueSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr003f);
               }
               §§goto(addr005c);
            }
            addr003f:
            this.minWidth = 112;
            if(_loc1_ || _loc1_)
            {
               addr005c:
               this.blendMode = "normal";
               if(_loc1_ || _loc1_)
               {
                  this.mxmlContent = [this._ArchitectImageValueSkin_DataGroup1_i()];
                  if(!_loc2_)
                  {
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr0080);
         }
         addr0080:
         this.currentState = "normal";
         if(!(_loc2_ && _loc1_))
         {
            states = [new State({
               "name":"normal",
               "overrides":[]
            }),new State({
               "name":"disabled",
               "overrides":[new SetProperty().initializeFromObject({
                  "name":"alpha",
                  "value":0.5
               })]
            })];
            addr0094:
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr0048);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0048:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function _ArchitectImageValueSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!_loc3_)
         {
            _loc1_.itemRenderer = this._ArchitectImageValueSkin_ClassFactory1_c();
            if(_loc2_)
            {
               _loc1_.layout = this._ArchitectImageValueSkin_VerticalLayout1_c();
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "dataGroup";
                  addr004a:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr007c);
                        }
                        §§goto(addr00ad);
                     }
                  }
                  §§goto(addr009b);
               }
               addr007c:
               _loc1_.document = this;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr009b:
                  this.dataGroup = _loc1_;
                  if(_loc2_ || _loc2_)
                  {
                     addr00ad:
                     BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                  }
               }
               §§goto(addr00ba);
            }
            §§goto(addr004a);
         }
         addr00ba:
         return _loc1_;
      }
      
      private function _ArchitectImageValueSkin_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.generator = DefaultItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectImageValueSkin_VerticalLayout1_c() : VerticalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr004a);
            }
            §§goto(addr0055);
         }
         addr004a:
         _loc1_.horizontalAlign = "contentJustify";
         if(_loc2_)
         {
            addr0055:
            _loc1_.requestedMinRowCount = 3;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._385593099dataGroup = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005f);
            }
            addr007d:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : List
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0062);
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
   }
}

