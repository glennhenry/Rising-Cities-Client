package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ScrollTextItemRenderer extends ItemRenderer
   {
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CharacteristicsEntryVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function ScrollTextItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               addr0030:
               if(!(_loc1_ && _loc1_))
               {
                  this.focusEnabled = false;
                  if(_loc2_ || _loc1_)
                  {
                     addr0066:
                     this.mxmlContent = [this._ScrollTextItemRenderer_LocaLabel1_i()];
                  }
                  return;
               }
            }
            §§goto(addr0066);
         }
         §§goto(addr0030);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               §§goto(addr002d);
            }
            §§goto(addr0049);
         }
         addr002d:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc2_ && _loc2_))
            {
               return;
            }
         }
         else
         {
            addr0049:
            this.__moduleFactoryInitialized = true;
         }
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
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.data = param1;
            if(_loc2_ || _loc2_)
            {
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(_loc2_)
                  {
                     this._data = param1 as CharacteristicsEntryVo;
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr0072:
                        this._dataIsDirty = true;
                        if(!_loc3_)
                        {
                           addr007c:
                           invalidateProperties();
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr007c);
                  }
               }
               addr0081:
               return;
            }
            §§goto(addr007c);
         }
         §§goto(addr0072);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = false;
         if(!(_loc2_ && _loc3_))
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._dataIsDirty);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this._dataIsDirty = false;
                        if(_loc3_)
                        {
                           addr0047:
                           §§push(this.itemLabel);
                           if(_loc3_)
                           {
                              §§push(LocaUtils);
                              §§push("rcl.education.characteristics");
                              §§push("rcl.education.characteristics.name.capital.");
                              if(_loc3_)
                              {
                                 §§push(§§pop() + this._data.localeId);
                              }
                              §§push(§§pop().getString(§§pop(),§§pop()));
                              if(_loc3_)
                              {
                                 §§pop().text = §§pop();
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr007e:
                                    §§push(LocaUtils);
                                    §§push("rcl.tooltips.minilayer.traitunlock");
                                    §§push("rcl.tooltips.minilayer.traitunlock.");
                                    if(!_loc2_)
                                    {
                                       §§push(this._data);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop().gender);
                                          if(_loc3_)
                                          {
                                             §§goto(addr00c5);
                                          }
                                          §§goto(addr00c4);
                                       }
                                       §§goto(addr00c1);
                                    }
                                    addr00c5:
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() + ".");
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          addr00c4:
                                          addr00c1:
                                          §§push(§§pop() + this._data.localeId);
                                       }
                                    }
                                    §§push(§§pop().getString(§§pop(),§§pop()).indexOf("%") == -1);
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00ea:
                                       §§push(!§§pop());
                                    }
                                    _loc1_ = §§pop();
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr00f9:
                                       addr00fd:
                                       §§push(this.itemLabel);
                                       §§push(LocaUtils);
                                       §§push("rcl.tooltips.minilayer.traitunlock");
                                       §§push("rcl.tooltips.minilayer.traitunlock.");
                                       if(!_loc2_)
                                       {
                                          §§push(this._data);
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§push(§§pop().gender);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() + ".");
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      §§push(this._data);
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         addr0158:
                                                         addr0155:
                                                         §§push(§§pop() + §§pop().localeId);
                                                         if(_loc3_)
                                                         {
                                                            addr015e:
                                                            if(_loc1_)
                                                            {
                                                               addr0163:
                                                               §§push(this._data);
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  §§push(§§pop().amountSum);
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     addr01b2:
                                                                     §§pop().toolTip = §§pop().getString(§§pop(),§§pop() * 100,[_loc3_ || _loc3_ ? §§pop() : §§pop()]);
                                                                     §§goto(addr01b4);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr01a9:
                                                                  §§push(§§pop().amountSum);
                                                               }
                                                               §§goto(addr01ac);
                                                            }
                                                            else
                                                            {
                                                               §§push(this._data);
                                                            }
                                                            §§goto(addr01a9);
                                                         }
                                                         §§goto(addr0163);
                                                      }
                                                      §§goto(addr01a9);
                                                   }
                                                   §§goto(addr015e);
                                                }
                                                §§goto(addr0163);
                                             }
                                             §§goto(addr0158);
                                          }
                                          §§goto(addr0155);
                                       }
                                       §§goto(addr0163);
                                    }
                                    §§goto(addr01b4);
                                 }
                                 §§goto(addr00f9);
                              }
                              §§goto(addr01b2);
                           }
                           §§goto(addr00fd);
                        }
                        §§goto(addr01b4);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr01b4);
               }
               §§goto(addr00ea);
            }
            addr01b4:
            return;
         }
         §§goto(addr0047);
      }
      
      override public function set selected(param1:Boolean) : void
      {
      }
      
      private function _ScrollTextItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.styleName = "professionalCharacteristicsLabel";
                  if(!_loc3_)
                  {
                     _loc1_.id = "itemLabel";
                     if(_loc2_)
                     {
                        addr0056:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr007f:
                                 this.itemLabel = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr0089:
                                    BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                                 }
                              }
                              §§goto(addr0096);
                           }
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0056);
               }
               §§goto(addr007f);
            }
            §§goto(addr0089);
         }
         addr0096:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2135689121itemLabel;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._2135689121itemLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

