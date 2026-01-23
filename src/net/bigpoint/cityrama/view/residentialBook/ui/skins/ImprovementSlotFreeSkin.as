package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   public class ImprovementSlotFreeSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1333604737_ImprovementSlotFreeSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ImprovementSlotComponent;
      
      public function ImprovementSlotFreeSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(!_loc1_)
            {
               addr0026:
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.mxmlContent = [this._ImprovementSlotFreeSkin_Group1_c()];
                  if(_loc2_)
                  {
                     §§goto(addr0048);
                  }
                  §§goto(addr005c);
               }
            }
            addr0048:
            this.currentState = "normal";
            if(!(_loc1_ && _loc2_))
            {
               states = [new State({
                  "name":"normal",
                  "overrides":[]
               }),new State({
                  "name":"disabled",
                  "overrides":[]
               }),new State({
                  "name":"highlight",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementSlotFreeSkin_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"slot_free_highlight"
                  })]
               }),new State({
                  "name":"highlightOver",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementSlotFreeSkin_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"slot_free_highlight"
                  })]
               }),new State({
                  "name":"down",
                  "overrides":[]
               }),new State({
                  "name":"over",
                  "overrides":[]
               }),new State({
                  "name":"up",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementSlotFreeSkin_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"slot_free"
                  })]
               })];
               addr005c:
            }
            return;
         }
         §§goto(addr0026);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     return;
                  }
               }
               else
               {
                  addr0059:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr005f);
            }
            §§goto(addr0059);
         }
         addr005f:
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
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(currentState == "highlight");
            if(_loc3_ || _loc3_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!(_loc4_ && param2))
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr0043:
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(param1);
                           if(!_loc4_)
                           {
                              §§push("over");
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc3_)
                                 {
                                    addr0067:
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr0079:
                                          §§push("highlightOver");
                                          if(_loc3_ || Boolean(param1))
                                          {
                                             param1 = §§pop();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr00a6:
                                                §§push(currentState == "highlight");
                                                if(_loc3_ || param2)
                                                {
                                                   var _temp_9:* = §§pop();
                                                   §§push(_temp_9);
                                                   §§push(_temp_9);
                                                   if(!_loc4_)
                                                   {
                                                      addr00c1:
                                                      if(!§§pop())
                                                      {
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            §§pop();
                                                            if(_loc3_)
                                                            {
                                                               addr00d8:
                                                               §§push(currentState == "highlightOver");
                                                               if(!_loc4_)
                                                               {
                                                                  addr00e5:
                                                                  var _temp_11:* = §§pop();
                                                                  addr00e6:
                                                                  §§push(_temp_11);
                                                                  if(_temp_11)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr00f7:
                                                                        §§pop();
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr00fe:
                                                                           addr0102:
                                                                           addr00ff:
                                                                           §§push(param1 == "up");
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0112:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc3_ || Boolean(param1))
                                                                                 {
                                                                                    addr0129:
                                                                                    addr0123:
                                                                                    if(this.hostComponent.highlight)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr0136:
                                                                                          param1 = "highlight";
                                                                                          §§goto(addr0133);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr013c);
                                                                                 }
                                                                                 addr0133:
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr013c:
                                                                                    super.setCurrentState(param1,param2);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr013c);
                                                                           }
                                                                           §§goto(addr0129);
                                                                        }
                                                                        §§goto(addr013c);
                                                                     }
                                                                  }
                                                                  §§goto(addr0112);
                                                               }
                                                               §§goto(addr00f7);
                                                            }
                                                            §§goto(addr00fe);
                                                         }
                                                         §§goto(addr0129);
                                                      }
                                                      §§goto(addr00e5);
                                                   }
                                                   §§goto(addr00e6);
                                                }
                                                §§goto(addr00f7);
                                             }
                                             §§goto(addr0123);
                                          }
                                          §§goto(addr0136);
                                       }
                                       §§goto(addr013c);
                                    }
                                    §§goto(addr00a6);
                                 }
                                 §§goto(addr00e5);
                              }
                              §§goto(addr0102);
                           }
                           §§goto(addr00ff);
                        }
                        §§goto(addr0079);
                     }
                  }
                  §§goto(addr0067);
               }
               §§goto(addr00c1);
            }
            §§goto(addr0043);
         }
         §§goto(addr00d8);
      }
      
      private function _ImprovementSlotFreeSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 138;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.height = 138;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ImprovementSlotFreeSkin_BriskImageDynaLib1_i()];
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006b:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006b);
            }
            §§goto(addr0077);
         }
         addr007b:
         return _loc1_;
      }
      
      private function _ImprovementSlotFreeSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "slot_free";
               if(_loc2_)
               {
                  _loc1_.id = "_ImprovementSlotFreeSkin_BriskImageDynaLib1";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr008e);
                           }
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0072);
            }
            §§goto(addr00a0);
         }
         addr008e:
         this._ImprovementSlotFreeSkin_BriskImageDynaLib1 = _loc1_;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr00a0:
            BindingManager.executeBindings(this,"_ImprovementSlotFreeSkin_BriskImageDynaLib1",this._ImprovementSlotFreeSkin_BriskImageDynaLib1);
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementSlotFreeSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._1333604737_ImprovementSlotFreeSkin_BriskImageDynaLib1;
      }
      
      public function set _ImprovementSlotFreeSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1333604737_ImprovementSlotFreeSkin_BriskImageDynaLib1;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr004e:
                  this._1333604737_ImprovementSlotFreeSkin_BriskImageDynaLib1 = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementSlotFreeSkin_BriskImageDynaLib1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ImprovementSlotComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ImprovementSlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
   }
}

