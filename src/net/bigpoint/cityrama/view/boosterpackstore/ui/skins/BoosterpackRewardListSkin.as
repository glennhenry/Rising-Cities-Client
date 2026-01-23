package net.bigpoint.cityrama.view.boosterpackstore.ui.skins
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   public class BoosterpackRewardListSkin extends SparkSkin implements IStateClient2
   {
      
      public static const LOCKED:String = "Locked";
      
      public static const UNLOCKED:String = "UnLocked";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         LOCKED = "Locked";
         if(!_loc1_)
         {
            UNLOCKED = "UnLocked";
         }
      }
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _scrollPosDirty:Boolean;
      
      private var _213507019hostComponent:List;
      
      public function BoosterpackRewardListSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  this.mxmlContent = [this._BoosterpackRewardListSkin_HGroup1_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr0090);
               }
               addr0069:
               this.currentState = "normal";
               if(!_loc2_)
               {
                  this.addEventListener("creationComplete",this.___BoosterpackRewardListSkin_SparkSkin1_creationComplete);
                  addr0075:
                  if(!_loc2_)
                  {
                     addr0090:
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
            §§goto(addr0090);
         }
         §§goto(addr0075);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            super.updateDisplayList(param1,param2);
            if(!(_loc3_ && Boolean(param2)))
            {
               if(this._scrollPosDirty)
               {
                  if(_loc4_ || Boolean(param2))
                  {
                     this._scrollPosDirty = false;
                     if(!_loc3_)
                     {
                        addr0071:
                        dispatchEvent(new Event(UNLOCKED,true));
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr008c:
                           this.dataGroup.mouseChildren = true;
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0094);
            }
            §§goto(addr008c);
         }
         addr0094:
      }
      
      private function checkScroll() : void
      {
      }
      
      private function onCreationComplete(param1:FlexEvent) : void
      {
      }
      
      private function _BoosterpackRewardListSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || Boolean(this))
            {
               addr0039:
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._BoosterpackRewardListSkin_DataGroup1_i()];
                        if(!(_loc3_ && _loc2_))
                        {
                           addr008f:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr008f);
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      private function _BoosterpackRewardListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.focusEnabled = false;
                  if(_loc3_ || _loc3_)
                  {
                     addr005f:
                     _loc1_.layout = this._BoosterpackRewardListSkin_HorizontalLayout1_c();
                     if(!_loc2_)
                     {
                        _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                        if(_loc3_)
                        {
                           _loc1_.id = "dataGroup";
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr0095:
                                    _loc1_.document = this;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00b1:
                                       this.dataGroup = _loc1_;
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          addr00c3:
                                          BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                       }
                                       §§goto(addr00d0);
                                    }
                                    §§goto(addr00c3);
                                 }
                                 §§goto(addr00d0);
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00d0);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr00c3);
            }
            addr00d0:
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _BoosterpackRewardListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc2_ || _loc3_)
         {
            _loc1_.gap = 10;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr0056);
            }
            §§goto(addr0061);
         }
         addr0056:
         _loc1_.verticalAlign = "middle";
         if(!_loc3_)
         {
            addr0061:
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || _loc3_)
            {
               _loc1_.clipAndEnableScrolling = true;
            }
         }
         return _loc1_;
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.checkScroll();
         }
      }
      
      public function ___BoosterpackRewardListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.onCreationComplete(param1);
         }
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._385593099dataGroup = param1;
                  if(!_loc3_)
                  {
                     addr004b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr004b);
            }
            addr0072:
            return;
         }
         §§goto(addr0063);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0043);
                  }
                  §§goto(addr0053);
               }
               addr0043:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0053:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0062);
            }
            addr0062:
            return;
         }
         §§goto(addr0043);
      }
   }
}

