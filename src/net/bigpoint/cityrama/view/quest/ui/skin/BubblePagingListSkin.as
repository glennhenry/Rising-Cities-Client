package net.bigpoint.cityrama.view.quest.ui.skin
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.components.supportClasses.Skin;
   import spark.layouts.HorizontalLayout;
   
   public class BubblePagingListSkin extends Skin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function BubblePagingListSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc2_))
               {
                  this.mxmlContent = [this._BubblePagingListSkin_DataGroup1_i()];
                  if(_loc2_ || _loc1_)
                  {
                     addr0064:
                     this.currentState = "normal";
                     if(_loc2_)
                     {
                        addr0070:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                  }
                  return;
               }
            }
            §§goto(addr0070);
         }
         §§goto(addr0064);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr0046);
            }
            §§goto(addr0069);
         }
         addr0046:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc2_ && _loc2_))
            {
               return;
            }
         }
         else
         {
            addr0069:
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      private function _BubblePagingListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.focusEnabled = false;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr0063);
            }
            §§goto(addr00ae);
         }
         addr0063:
         _loc1_.layout = this._BubblePagingListSkin_HorizontalLayout1_c();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.id = "dataGroup";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr00ae:
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00bf:
                        this.dataGroup = _loc1_;
                        if(!_loc3_)
                        {
                           addr00c9:
                           BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                        }
                     }
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr00bf);
            }
            §§goto(addr00ae);
         }
         addr00d6:
         return _loc1_;
      }
      
      private function _BubblePagingListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc3_)
         {
            _loc1_.useVirtualLayout = true;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.clipAndEnableScrolling = true;
               addr0041:
               if(!_loc2_)
               {
                  §§goto(addr0057);
               }
               §§goto(addr0074);
            }
            addr0057:
            _loc1_.gap = 2;
            if(_loc3_ || _loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  addr0074:
                  _loc1_.horizontalAlign = "center";
               }
            }
            return _loc1_;
         }
         §§goto(addr0041);
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : List
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0078);
      }
   }
}

