package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class OutputItemRendered extends ItemRenderer
   {
      
      private var _906050231effectAmount:LocaLabel;
      
      private var _1715632060effectName:LocaLabel;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:SimpleItemVo;
      
      private var _isDirty:Boolean;
      
      public function OutputItemRendered()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  addr0049:
                  this.autoDrawBackground = false;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0065:
                     this.percentWidth = 100;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this.maxWidth = 254;
                        if(!_loc2_)
                        {
                           addr0083:
                           this.mxmlContent = [this._OutputItemRendered_HGroup1_c()];
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr0083);
                  }
               }
               addr008e:
               return;
            }
            §§goto(addr0049);
         }
         §§goto(addr0065);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               addr0047:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0047);
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
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._isDirty);
               if(_loc1_)
               {
                  §§push(§§pop());
                  if(_loc1_)
                  {
                     var _temp_1:* = §§pop();
                     §§push(_temp_1);
                     if(_temp_1)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop();
                           if(_loc1_)
                           {
                              §§push(this._data);
                              if(!_loc2_)
                              {
                                 §§goto(addr0050);
                              }
                              §§goto(addr00fc);
                           }
                           §§goto(addr0061);
                        }
                     }
                  }
               }
               addr0050:
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr0061:
                     this._isDirty = false;
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(this.icon);
                        if(_loc1_)
                        {
                           §§push(this._data);
                           if(_loc1_)
                           {
                              §§push(§§pop().imageId);
                              if(_loc1_)
                              {
                                 §§pop().dynaBmpSourceName = §§pop();
                                 if(!_loc2_)
                                 {
                                    addr009e:
                                    this.icon.dynaLibName = this._data.dynaLibName;
                                    addr009c:
                                    addr0098:
                                    if(!_loc2_)
                                    {
                                       this.effectName.text = this._data.text;
                                       if(_loc1_ || Boolean(this))
                                       {
                                          addr00c8:
                                          §§push(this.effectAmount);
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§pop().text = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.amount));
                                             if(_loc1_)
                                             {
                                                addr00f3:
                                                §§push(this._data);
                                                if(_loc1_)
                                                {
                                                   addr00fc:
                                                   §§push(§§pop().colorModifier);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc2_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               addr011c:
                                                               §§push(this.effectAmount);
                                                               if(_loc1_ || Boolean(this))
                                                               {
                                                                  §§push("color");
                                                                  if(_loc1_)
                                                                  {
                                                                     §§push(5726299);
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §§pop().setStyle(§§pop(),§§pop());
                                                                        if(_loc2_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0194:
                                                                        §§pop().setStyle(§§pop(),§§pop());
                                                                        if(_loc2_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr01a9:
                                                                     §§pop().setStyle(§§pop(),14300688);
                                                                     addr01a7:
                                                                  }
                                                                  §§goto(addr01ac);
                                                               }
                                                               else
                                                               {
                                                                  addr017d:
                                                                  §§push("color");
                                                                  if(_loc1_)
                                                                  {
                                                                     §§push(8237580);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§goto(addr0194);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr01a9);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr01a7);
                                                                  }
                                                                  §§goto(addr01a9);
                                                               }
                                                            }
                                                            §§goto(addr01ac);
                                                         }
                                                         else
                                                         {
                                                            addr0159:
                                                            addr0157:
                                                            addr0154:
                                                            if(this._data.colorModifier > 0)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  addr0162:
                                                                  §§push(this.effectAmount);
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     §§goto(addr017d);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr01a4:
                                                                     §§push("color");
                                                                  }
                                                                  §§goto(addr01a7);
                                                               }
                                                               §§goto(addr01ac);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.effectAmount);
                                                            }
                                                            §§goto(addr01a4);
                                                         }
                                                      }
                                                      §§goto(addr0159);
                                                   }
                                                   §§goto(addr0157);
                                                }
                                                §§goto(addr0154);
                                             }
                                             §§goto(addr0162);
                                          }
                                          §§goto(addr017d);
                                       }
                                       §§goto(addr01ac);
                                    }
                                    §§goto(addr0162);
                                 }
                                 §§goto(addr00c8);
                              }
                              §§goto(addr009e);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr011c);
               }
               addr01ac:
               return;
            }
         }
         §§goto(addr00f3);
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(param1 is SimpleItemVo);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr004a:
                     addr003e:
                     if(RandomUtilities.isUnEqual(param1,this._data))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this._data = param1 as SimpleItemVo;
                           if(!(_loc2_ && Boolean(param1)))
                           {
                              addr007c:
                              this._isDirty = true;
                              if(!_loc2_)
                              {
                                 addr0086:
                                 invalidateProperties();
                              }
                              §§goto(addr008b);
                           }
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr007c);
               }
               addr008b:
               return;
            }
            §§goto(addr004a);
         }
         §§goto(addr003e);
      }
      
      private function _OutputItemRendered_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.horizontalAlign = "right";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.gap = 3;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.height = 28;
                        if(_loc2_)
                        {
                           addr0077:
                           _loc1_.maxHeight = 28;
                           if(_loc2_)
                           {
                              _loc1_.mxmlContent = [this._OutputItemRendered_LocaLabel1_i(),this._OutputItemRendered_LocaLabel2_i(),this._OutputItemRendered_BriskImageDynaLib1_i()];
                              addr0082:
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr00b4);
                              }
                           }
                           §§goto(addr00c0);
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr00c0);
                  }
                  addr00b4:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr00c0:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr0077);
            }
            addr00c4:
            return _loc1_;
         }
         §§goto(addr0082);
      }
      
      private function _OutputItemRendered_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc2_)
               {
                  _loc1_.styleName = "residentialOutputItem";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "effectName";
                     if(!_loc2_)
                     {
                        addr005f:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr0088);
                              }
                           }
                           §§goto(addr0092);
                        }
                        addr0088:
                        this.effectName = _loc1_;
                        if(_loc3_)
                        {
                           addr0092:
                           BindingManager.executeBindings(this,"effectName",this.effectName);
                        }
                        §§goto(addr009f);
                     }
                  }
                  addr009f:
                  return _loc1_;
               }
               §§goto(addr005f);
            }
         }
         §§goto(addr0088);
      }
      
      private function _OutputItemRendered_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = null;
         _loc1_ = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "postitHeader";
            if(_loc3_)
            {
               _loc1_.id = "effectAmount";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0068:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0071:
                           this.effectAmount = _loc1_;
                           if(!_loc2_)
                           {
                              addr007b:
                              BindingManager.executeBindings(this,"effectAmount",this.effectAmount);
                           }
                           §§goto(addr0088);
                        }
                        §§goto(addr007b);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0068);
            }
            §§goto(addr007b);
         }
         addr0088:
         return _loc1_;
      }
      
      private function _OutputItemRendered_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "icon";
               if(!_loc2_)
               {
                  addr0050:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr005c:
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           addr0078:
                           this.icon = _loc1_;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr008a:
                              BindingManager.executeBindings(this,"icon",this.icon);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr008a);
                     }
                     addr0097:
                     return _loc1_;
                  }
                  §§goto(addr0078);
               }
               §§goto(addr008a);
            }
            §§goto(addr0050);
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectAmount() : LocaLabel
      {
         return this._906050231effectAmount;
      }
      
      public function set effectAmount(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._906050231effectAmount;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._906050231effectAmount = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0068);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectAmount",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectName() : LocaLabel
      {
         return this._1715632060effectName;
      }
      
      public function set effectName(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1715632060effectName;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1715632060effectName = param1;
                  addr004a:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectName",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3226745icon;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._3226745icon = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006b);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
         }
         addr007a:
      }
   }
}

