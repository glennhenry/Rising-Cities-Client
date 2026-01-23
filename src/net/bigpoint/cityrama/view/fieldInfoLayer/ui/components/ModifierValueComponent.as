package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.ModifierValueVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class ModifierValueComponent extends Group implements IStateClient2
   {
      
      private var _1840699177energyGroup:HGroup;
      
      private var _1464688417energyIcon:BriskImageDynaLib;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _899936824moodGroup:HGroup;
      
      private var _306079728moodIcon:BriskImageDynaLib;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ModifierValueVo;
      
      private var _dataIsDirty:Boolean;
      
      public function ModifierValueComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr0042:
                  this.mxmlContent = [this._ModifierValueComponent_HGroup1_c()];
                  if(!_loc1_)
                  {
                     this.currentState = "normal";
                     if(!_loc1_)
                     {
                        addr0068:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0068);
               }
               addr0090:
               return;
            }
         }
         §§goto(addr0042);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               addr0056:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0056);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:ModifierValueVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  addr0052:
                  this._data = param1;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     invalidateProperties();
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        addr0076:
                        this._dataIsDirty = true;
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0076);
            }
            addr007b:
            return;
         }
         §§goto(addr0052);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.commitProperties();
            if(_loc1_ || Boolean(this))
            {
               if(this._dataIsDirty)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this._dataIsDirty = false;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this.moodLabel);
                        if(_loc1_ || Boolean(this))
                        {
                           §§push("color");
                           if(!(_loc2_ && _loc2_))
                           {
                              §§pop().setStyle(§§pop(),this.getColorFromAmount(this._data.happyValue));
                              if(!_loc2_)
                              {
                                 §§push(this.energyLabel);
                                 if(!_loc2_)
                                 {
                                    §§push("color");
                                    if(_loc1_)
                                    {
                                       §§pop().setStyle(§§pop(),this.getColorFromAmount(this._data.energyValue));
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr00ba:
                                          §§push(this._data);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop().happyValue);
                                             if(_loc1_)
                                             {
                                                §§push(0);
                                                if(!_loc2_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         addr00e3:
                                                         §§push(this.moodIcon);
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            §§push("layer_happyness_icon");
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §§pop().dynaBmpSourceName = §§pop();
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  addr012f:
                                                                  §§push(this._data);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr0138:
                                                                     §§push(§§pop().happyValue);
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr014f:
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(this.moodLabel);
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    addr017d:
                                                                                    addr0169:
                                                                                    §§push("+");
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(§§pop() + this._data.happyValue.toString());
                                                                                    }
                                                                                    §§pop().text = §§pop();
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr019e:
                                                                                       addr01a7:
                                                                                       addr01a5:
                                                                                       addr01a2:
                                                                                       if(this._data.energyValue > 0)
                                                                                       {
                                                                                          if(_loc1_ || Boolean(this))
                                                                                          {
                                                                                             addr01b8:
                                                                                             §§push(this.energyLabel);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§push("+");
                                                                                                if(_loc1_ || _loc2_)
                                                                                                {
                                                                                                   addr01db:
                                                                                                   §§push(§§pop() + this._data.energyValue.toString());
                                                                                                }
                                                                                                §§pop().text = §§pop();
                                                                                                if(_loc2_ && Boolean(this))
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr01fe:
                                                                                                §§pop().text = this._data.energyValue.toString();
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr020b);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(this.energyLabel);
                                                                                       }
                                                                                       §§goto(addr01fe);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr018c:
                                                                                    §§pop().text = this._data.happyValue.toString();
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr019e);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr020b);
                                                                              }
                                                                              §§goto(addr01b8);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.moodLabel);
                                                                           }
                                                                           §§goto(addr018c);
                                                                        }
                                                                        §§goto(addr01a7);
                                                                     }
                                                                     §§goto(addr01a5);
                                                                  }
                                                                  §§goto(addr01a2);
                                                               }
                                                               §§goto(addr019e);
                                                            }
                                                            else
                                                            {
                                                               addr0128:
                                                               §§pop().dynaBmpSourceName = §§pop();
                                                               if(_loc1_)
                                                               {
                                                                  §§goto(addr012f);
                                                               }
                                                            }
                                                            §§goto(addr01b8);
                                                         }
                                                         else
                                                         {
                                                            addr0125:
                                                            §§push("layer_sad_icon");
                                                         }
                                                         §§goto(addr0128);
                                                      }
                                                      §§goto(addr019e);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.moodIcon);
                                                   }
                                                   §§goto(addr0125);
                                                }
                                                §§goto(addr014f);
                                             }
                                             §§goto(addr01a5);
                                          }
                                          §§goto(addr0138);
                                       }
                                       §§goto(addr00e3);
                                    }
                                    §§goto(addr01db);
                                 }
                                 §§goto(addr01fe);
                              }
                              §§goto(addr020b);
                           }
                           §§goto(addr017d);
                        }
                        §§goto(addr0169);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr019e);
               }
               §§goto(addr020b);
            }
            §§goto(addr019e);
         }
         addr020b:
      }
      
      private function getColorFromAmount(param1:Number) : uint
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(0);
               if(!(_loc3_ && Boolean(param1)))
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr004a:
                        §§push(14300688);
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0073:
                        addr0076:
                        addr0074:
                        if(param1 > 0)
                        {
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              §§push(8237580);
                              if(!_loc3_)
                              {
                                 §§goto(addr008e);
                              }
                           }
                           else
                           {
                              addr008f:
                              return 7303023;
                           }
                           return §§pop();
                        }
                        §§goto(addr008f);
                     }
                     addr008e:
                     return §§pop();
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0076);
            }
            §§goto(addr0074);
         }
         §§goto(addr004a);
      }
      
      private function _ModifierValueComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._ModifierValueComponent_HGroup2_i(),this._ModifierValueComponent_HGroup3_i()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0084:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0084);
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr0084);
      }
      
      private function _ModifierValueComponent_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 50;
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     addr0054:
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ModifierValueComponent_LocaLabel1_i(),this._ModifierValueComponent_BriskImageDynaLib1_i()];
                        if(!_loc2_)
                        {
                           _loc1_.id = "moodGroup";
                           if(!_loc2_)
                           {
                              addr007f:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr0096);
                                 }
                              }
                              §§goto(addr009f);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr007f);
                     }
                  }
                  addr0096:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr009f:
                     this.moodGroup = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        addr00b1:
                        BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
                     }
                  }
                  §§goto(addr00be);
               }
               addr00be:
               return _loc1_;
            }
            §§goto(addr0054);
         }
         §§goto(addr00b1);
      }
      
      private function _ModifierValueComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "outcomeNeutral";
            if(!_loc2_)
            {
               addr0033:
               _loc1_.text = "+0";
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr0053);
               }
               §§goto(addr0066);
            }
            addr0053:
            _loc1_.id = "moodLabel";
            if(!(_loc2_ && _loc2_))
            {
               addr0066:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc3_ || _loc2_)
                     {
                        addr0096:
                        this.moodLabel = _loc1_;
                        if(_loc3_)
                        {
                           addr00a0:
                           BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
                        }
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0096);
            }
            addr00ad:
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _ModifierValueComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_happyness_icon";
               if(!_loc3_)
               {
                  _loc1_.id = "moodIcon";
                  addr003c:
                  if(_loc2_ || _loc2_)
                  {
                     addr005b:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0083:
                              this.moodIcon = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0095:
                                 BindingManager.executeBindings(this,"moodIcon",this.moodIcon);
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0095);
               }
            }
            §§goto(addr005b);
         }
         §§goto(addr003c);
      }
      
      private function _ModifierValueComponent_HGroup3_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 50;
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr0065);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr0065);
               }
               §§goto(addr0099);
            }
            addr0065:
            _loc1_.mxmlContent = [this._ModifierValueComponent_LocaLabel2_i(),this._ModifierValueComponent_BriskImageDynaLib2_i()];
            if(!_loc3_)
            {
               _loc1_.id = "energyGroup";
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0099:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr00a5:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr00ae);
                        }
                     }
                     §§goto(addr00b8);
                  }
                  addr00ae:
                  this.energyGroup = _loc1_;
                  if(_loc2_)
                  {
                     addr00b8:
                     BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
                  }
                  §§goto(addr00c5);
               }
               §§goto(addr00a5);
            }
            addr00c5:
            return _loc1_;
         }
         §§goto(addr0099);
      }
      
      private function _ModifierValueComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "outcomeNeutral";
            if(!_loc2_)
            {
               §§goto(addr0041);
            }
            §§goto(addr007e);
         }
         addr0041:
         _loc1_.id = "energyLabel";
         if(!_loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr0074:
                     this.energyLabel = _loc1_;
                     if(!_loc2_)
                     {
                        addr007e:
                        BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr008b);
            }
            §§goto(addr0074);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _ModifierValueComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "energy_icon";
               if(!_loc3_)
               {
                  addr004f:
                  _loc1_.id = "energyIcon";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr007a:
                              this.energyIcon = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0084:
                                 BindingManager.executeBindings(this,"energyIcon",this.energyIcon);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0084);
            }
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyGroup() : HGroup
      {
         return this._1840699177energyGroup;
      }
      
      public function set energyGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1840699177energyGroup;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1840699177energyGroup = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get energyIcon() : BriskImageDynaLib
      {
         return this._1464688417energyIcon;
      }
      
      public function set energyIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1464688417energyIcon;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1464688417energyIcon = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyIcon",_loc2_,param1));
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
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyLabel() : LocaLabel
      {
         return this._1836601012energyLabel;
      }
      
      public function set energyLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1836601012energyLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1836601012energyLabel = param1;
                  addr003d:
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006d);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodGroup() : HGroup
      {
         return this._899936824moodGroup;
      }
      
      public function set moodGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._899936824moodGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._899936824moodGroup = param1;
                  if(!_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodIcon() : BriskImageDynaLib
      {
         return this._306079728moodIcon;
      }
      
      public function set moodIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._306079728moodIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0049:
                  this._306079728moodIcon = param1;
                  if(!_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0054);
            }
            addr0072:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodLabel() : LocaLabel
      {
         return this._895838659moodLabel;
      }
      
      public function set moodLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._895838659moodLabel;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._895838659moodLabel = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0065);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
   }
}

