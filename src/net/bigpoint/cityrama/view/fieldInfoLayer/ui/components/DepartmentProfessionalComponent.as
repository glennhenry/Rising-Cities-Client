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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  addr005c:
                  this.mxmlContent = [this._DepartmentProfessionalComponent_VGroup1_c()];
               }
            }
            return;
         }
         §§goto(addr005c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
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
      
      public function set data(param1:Vector.<DepartmentProfessionalComponentVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || Boolean(this))
               {
                  this._data = param1;
                  if(!_loc3_)
                  {
                     this._isDirty = true;
                     if(_loc2_ || Boolean(this))
                     {
                        addr006d:
                        invalidateProperties();
                     }
                     §§goto(addr0072);
                  }
               }
               §§goto(addr006d);
            }
            addr0072:
            return;
         }
         §§goto(addr006d);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:int = 0;
         if(!(_loc4_ && _loc2_))
         {
            super.commitProperties();
            if(!(_loc4_ && _loc3_))
            {
               §§push(this._data);
               if(_loc3_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           §§pop();
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(this._isDirty);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    addr008b:
                                    var _temp_8:* = §§pop();
                                    addr008c:
                                    §§push(_temp_8);
                                    if(_temp_8)
                                    {
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          addr009e:
                                          §§pop();
                                          if(_loc3_)
                                          {
                                             §§goto(addr00a9);
                                          }
                                          §§goto(addr00c5);
                                       }
                                    }
                                 }
                                 addr00a9:
                                 if(Boolean(this.slotVector))
                                 {
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00c5:
                                       this._isDirty = false;
                                       if(!_loc4_)
                                       {
                                          addr00d0:
                                          if(this._data.length)
                                          {
                                             if(_loc3_)
                                             {
                                                addr00df:
                                                _loc1_ = 0;
                                             }
                                             while(_loc1_ < this._data.length)
                                             {
                                                §§push(Boolean(this._data[_loc1_]));
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   var _temp_12:* = §§pop();
                                                   §§push(_temp_12);
                                                   if(_temp_12)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr0109:
                                                         §§pop();
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(Boolean(this.slotVector[_loc1_]));
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      this.slotVector[_loc1_].data = this._data[_loc1_];
                                                      if(_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      this.slotVector[_loc1_].includeInLayout = this.slotVector[_loc1_].visible = true;
                                                      if(_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   _loc1_++;
                                                   if(!(_loc3_ || Boolean(this)))
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr0109);
                                             }
                                             addr0185:
                                          }
                                          §§goto(addr0190);
                                       }
                                       §§goto(addr0185);
                                    }
                                    §§goto(addr00df);
                                 }
                                 addr0190:
                                 return;
                              }
                              §§goto(addr009e);
                           }
                           §§goto(addr00d0);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr009e);
            }
            §§goto(addr00d0);
         }
         §§goto(addr00c5);
      }
      
      private function get slotVector() : Vector.<DepartmentProfessionalSlotCheckComponent>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            if(!this._slotVector)
            {
               if(_loc2_)
               {
                  this._slotVector = new Vector.<DepartmentProfessionalSlotCheckComponent>();
                  if(_loc2_)
                  {
                     addr0053:
                     this._slotVector.push(this.slot1,this.slot2,this.slot3,this.slot4,this.slot5,this.slot6);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0053);
            }
         }
         addr0072:
         return this._slotVector;
      }
      
      private function _DepartmentProfessionalComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc2_)
               {
                  addr005b:
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._DepartmentProfessionalComponent_HGroup1_c(),this._DepartmentProfessionalComponent_HGroup2_c()];
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr009d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr009d);
            }
            addr00a1:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _DepartmentProfessionalComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 15;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.mxmlContent = [this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent1_i(),this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent2_i(),this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent3_i()];
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr007f:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr007f);
            }
            addr0083:
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent1_i() : DepartmentProfessionalSlotCheckComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         if(!_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.visible = false;
               if(!_loc3_)
               {
                  _loc1_.id = "slot1";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005b:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0074:
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              addr0085:
                              this.slot1 = _loc1_;
                              if(!_loc3_)
                              {
                                 BindingManager.executeBindings(this,"slot1",this.slot1);
                              }
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr005b);
            }
            addr009c:
            return _loc1_;
         }
         §§goto(addr0074);
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent2_i() : DepartmentProfessionalSlotCheckComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.includeInLayout = false;
            if(!(_loc2_ && _loc2_))
            {
               addr003c:
               _loc1_.visible = false;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "slot2";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0083:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr008c:
                              this.slot2 = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 BindingManager.executeBindings(this,"slot2",this.slot2);
                              }
                           }
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr008c);
                  }
                  addr00ab:
                  return _loc1_;
               }
               §§goto(addr0083);
            }
            §§goto(addr008c);
         }
         §§goto(addr003c);
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent3_i() : DepartmentProfessionalSlotCheckComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.includeInLayout = false;
            if(_loc2_)
            {
               _loc1_.visible = false;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "slot3";
                  addr0045:
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr0094);
                           }
                           §§goto(addr00a6);
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr00a6);
               }
               addr0094:
               this.slot3 = _loc1_;
               if(_loc2_ || _loc3_)
               {
                  addr00a6:
                  BindingManager.executeBindings(this,"slot3",this.slot3);
               }
               return _loc1_;
            }
            §§goto(addr0045);
         }
         §§goto(addr00a6);
      }
      
      private function _DepartmentProfessionalComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 15;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent4_i(),this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent5_i(),this._DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent6_i()];
               if(!_loc3_)
               {
                  addr0065:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0065);
         }
         addr0075:
         return _loc1_;
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent4_i() : DepartmentProfessionalSlotCheckComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         if(_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(_loc3_ || _loc2_)
            {
               _loc1_.visible = false;
               if(!_loc2_)
               {
                  addr0047:
                  _loc1_.id = "slot4";
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr0073);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0086);
               }
               addr0073:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr007c:
                  this.slot4 = _loc1_;
                  if(!_loc2_)
                  {
                     addr0086:
                     BindingManager.executeBindings(this,"slot4",this.slot4);
                  }
               }
               return _loc1_;
            }
            §§goto(addr007c);
         }
         §§goto(addr0047);
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent5_i() : DepartmentProfessionalSlotCheckComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.includeInLayout = false;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.visible = false;
               if(!_loc2_)
               {
                  addr0051:
                  _loc1_.id = "slot5";
                  if(_loc3_)
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr0084);
                           }
                           §§goto(addr0096);
                        }
                     }
                  }
                  addr0084:
                  this.slot5 = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0096:
                     BindingManager.executeBindings(this,"slot5",this.slot5);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr005c);
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _DepartmentProfessionalComponent_DepartmentProfessionalSlotCheckComponent6_i() : DepartmentProfessionalSlotCheckComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DepartmentProfessionalSlotCheckComponent = new DepartmentProfessionalSlotCheckComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.includeInLayout = false;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.visible = false;
               if(!(_loc2_ && _loc2_))
               {
                  addr005c:
                  _loc1_.id = "slot6";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr008f:
                              this.slot6 = _loc1_;
                              if(_loc3_)
                              {
                                 addr0099:
                                 BindingManager.executeBindings(this,"slot6",this.slot6);
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0099);
            }
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532659slot1;
      }
      
      public function set slot1(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._109532659slot1;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._109532659slot1 = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0069);
               }
            }
         }
         addr0078:
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532660slot2;
      }
      
      public function set slot2(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._109532660slot2;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._109532660slot2 = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532661slot3;
      }
      
      public function set slot3(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._109532661slot3;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._109532661slot3 = param1;
                  if(_loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr005b);
            }
            addr0079:
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532662slot4;
      }
      
      public function set slot4(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._109532662slot4;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._109532662slot4 = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
            addr0084:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532663slot5;
      }
      
      public function set slot5(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._109532663slot5;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._109532663slot5 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0053);
            }
         }
         addr0062:
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : DepartmentProfessionalSlotCheckComponent
      {
         return this._109532664slot6;
      }
      
      public function set slot6(param1:DepartmentProfessionalSlotCheckComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._109532664slot6;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._109532664slot6 = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0070);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
   }
}

