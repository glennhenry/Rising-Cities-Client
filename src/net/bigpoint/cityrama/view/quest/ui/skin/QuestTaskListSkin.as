package net.bigpoint.cityrama.view.quest.ui.skin
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   
   public class QuestTaskListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function QuestTaskListSkin()
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
               if(!(_loc2_ && Boolean(this)))
               {
                  this.blendMode = "normal";
                  if(!_loc2_)
                  {
                     this.mxmlContent = [this._QuestTaskListSkin_DataGroup1_i()];
                     if(!(_loc2_ && _loc2_))
                     {
                        addr006d:
                        this.currentState = "normal";
                        if(_loc1_)
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
                           addr0079:
                        }
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006d);
            }
            addr00bf:
            return;
         }
         §§goto(addr006d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0037);
                  }
               }
               §§goto(addr0045);
            }
            addr0037:
            return;
         }
         addr0045:
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function _QuestTaskListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.focusEnabled = false;
                  if(_loc3_)
                  {
                     _loc1_.layout = this._QuestTaskListSkin_VerticalLayout1_c();
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr007d:
                        _loc1_.id = "dataGroup";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00b1:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00ba:
                                    this.dataGroup = _loc1_;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr00cc:
                                       BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                    }
                                    §§goto(addr00d9);
                                 }
                                 §§goto(addr00cc);
                              }
                              addr00d9:
                              return _loc1_;
                           }
                           §§goto(addr00ba);
                        }
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr007d);
            }
            §§goto(addr00cc);
         }
         §§goto(addr007d);
      }
      
      private function _QuestTaskListSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(_loc3_ || _loc3_)
         {
            _loc1_.gap = 0;
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(!_loc3_)
                  {
                     addr0044:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
               }
               §§goto(addr0053);
            }
            addr0062:
            return;
         }
         §§goto(addr0044);
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0060);
            }
            addr007f:
            return;
         }
         §§goto(addr0060);
      }
   }
}

