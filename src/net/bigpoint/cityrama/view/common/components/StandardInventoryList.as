package net.bigpoint.cityrama.view.common.components
{
   import flash.events.MouseEvent;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.ImprovementInventoryItemRenderer;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventoryRenderer;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import spark.components.IItemRenderer;
   import spark.components.List;
   
   use namespace mx_internal;
   
   public class StandardInventoryList extends List
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         _skinParts = {
            "dataGroup":false,
            "scroller":false,
            "dropIndicator":false
         };
      }
      
      public function StandardInventoryList()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override protected function item_mouseDownHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:PlayfieldItemInventoryRenderer = null;
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            §§push(param1.currentTarget is IItemRenderer);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§push(int(IItemRenderer(param1.currentTarget).itemIndex));
                     if(!_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           addr0072:
                           §§push(param1.currentTarget is ImprovementInventoryItemRenderer);
                           if(_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    addr008a:
                                    §§push((param1.currentTarget as ImprovementInventoryItemRenderer).isEmpty);
                                    if(_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             return;
                                          }
                                       }
                                       else
                                       {
                                          addr044f:
                                          if(selectedIndex == _loc2_)
                                          {
                                             if(_loc5_)
                                             {
                                                mx_internal::setSelectedIndex(NO_SELECTION,true);
                                                if(_loc4_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             super.item_mouseDownHandler(param1);
                                          }
                                       }
                                       §§goto(addr047c);
                                    }
                                    else
                                    {
                                       addr00c0:
                                       if(§§pop())
                                       {
                                          if(_loc5_ || Boolean(_loc3_))
                                          {
                                             §§goto(addr00d2);
                                          }
                                          §§goto(addr047c);
                                       }
                                    }
                                    §§goto(addr044f);
                                 }
                                 addr00d2:
                                 _loc3_ = param1.currentTarget as PlayfieldItemInventoryRenderer;
                                 if(_loc5_)
                                 {
                                    §§push(param1.target is DynamicImageButton);
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       var _temp_8:* = §§pop();
                                       §§push(_temp_8);
                                       §§push(_temp_8);
                                       if(_loc5_ || Boolean(this))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                §§pop();
                                                if(_loc5_)
                                                {
                                                   §§push(param1.target.id == PlayfieldItemInventorySlotComponent.REMOVE_BTN_ID);
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      addr013e:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            return;
                                                         }
                                                      }
                                                      §§push(_loc3_.currentData);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop().slotState);
                                                         if(_loc5_ || Boolean(_loc3_))
                                                         {
                                                            §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_LOCKED);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  var _temp_13:* = §§pop();
                                                                  §§push(_temp_13);
                                                                  §§push(_temp_13);
                                                                  if(!(_loc4_ && Boolean(_loc3_)))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc5_ || Boolean(_loc3_))
                                                                           {
                                                                              addr01ad:
                                                                              §§push(_loc3_.currentData);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§pop().slotState);
                                                                                 if(!(_loc4_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_PURCHASABLE);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01db:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc4_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr0264);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr01fc:
                                                                                             §§push(_loc3_.currentData);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().slotState);
                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                {
                                                                                                   §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_OCCUPIED);
                                                                                                   if(_loc5_ || Boolean(this))
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(int(_loc3_.itemIndex));
                                                                                                            if(_loc5_ || Boolean(param1))
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               if(_loc5_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr0264:
                                                                                                                  §§push(_loc3_.currentData);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr026e:
                                                                                                                     §§push(§§pop().itemAtCursor);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc5_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              §§push(_loc3_.currentData);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().itemAtCursor);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() != _loc3_.currentData.item)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr02ad);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0401:
                                                                                                                                          addr0408:
                                                                                                                                          addr0405:
                                                                                                                                          addr040b:
                                                                                                                                          if(_loc3_.currentData.itemAtCursor.isBlocked)
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                §§goto(addr041d);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(int(selectedIndex));
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          if(_loc4_ && Boolean(param1))
                                                                                                                                          {
                                                                                                                                             addr03fa:
                                                                                                                                             _loc2_ = int(_loc3_.itemIndex);
                                                                                                                                             addr03f5:
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr0401);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr044f);
                                                                                                                                       }
                                                                                                                                       §§goto(addr03fa);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr03eb:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr03f5);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr038e:
                                                                                                                                 addr0388:
                                                                                                                                 addr0385:
                                                                                                                                 if(§§pop().slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_FREE)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr0398:
                                                                                                                                       §§push(_loc3_.currentData);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr03a2);
                                                                                                                                       }
                                                                                                                                       §§goto(addr03da);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0401);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr044f);
                                                                                                                           }
                                                                                                                           §§goto(addr0398);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc3_.currentData);
                                                                                                                           if(_loc5_ || Boolean(_loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop().emergencyRunning);
                                                                                                                              if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                              {
                                                                                                                                 addr02f4:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc5_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    var _temp_27:* = §§pop();
                                                                                                                                    addr0304:
                                                                                                                                    §§push(_temp_27);
                                                                                                                                    if(_temp_27)
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.currentData);
                                                                                                                                             if(_loc5_ || Boolean(_loc2_))
                                                                                                                                             {
                                                                                                                                                addr032f:
                                                                                                                                                §§push(§§pop().item.sortCategory);
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr033b:
                                                                                                                                                   §§push(PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY);
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr0347:
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr034e:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                                            {
                                                                                                                                                               return;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03b9);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr040b);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr038e);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr044f);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0388);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr0385);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0388);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0398);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr034e);
                                                                                                                                 }
                                                                                                                                 §§goto(addr040b);
                                                                                                                              }
                                                                                                                              §§goto(addr034e);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0385);
                                                                                                                     }
                                                                                                                     §§goto(addr03eb);
                                                                                                                  }
                                                                                                                  §§goto(addr03a2);
                                                                                                               }
                                                                                                               §§goto(addr03f5);
                                                                                                            }
                                                                                                            §§goto(addr03fa);
                                                                                                         }
                                                                                                         §§goto(addr044f);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(_loc3_.currentData);
                                                                                                         if(!(_loc4_ && Boolean(this)))
                                                                                                         {
                                                                                                            §§goto(addr0385);
                                                                                                         }
                                                                                                      }
                                                                                                      addr03a2:
                                                                                                      if(§§pop().disabledAlpha < 1)
                                                                                                      {
                                                                                                         if(!(_loc4_ && Boolean(param1)))
                                                                                                         {
                                                                                                            addr03b9:
                                                                                                            return;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(_loc3_.currentData);
                                                                                                         if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            addr03da:
                                                                                                            §§push(§§pop().itemAtCursor);
                                                                                                            if(_loc5_ || Boolean(this))
                                                                                                            {
                                                                                                               §§goto(addr03eb);
                                                                                                            }
                                                                                                            §§goto(addr0408);
                                                                                                         }
                                                                                                         §§goto(addr0405);
                                                                                                      }
                                                                                                      addr041d:
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr0347);
                                                                                                }
                                                                                                §§goto(addr033b);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr03da);
                                                                                       }
                                                                                       §§goto(addr034e);
                                                                                    }
                                                                                    §§goto(addr0347);
                                                                                 }
                                                                                 §§goto(addr033b);
                                                                              }
                                                                              §§goto(addr032f);
                                                                           }
                                                                           §§goto(addr01fc);
                                                                        }
                                                                        §§goto(addr040b);
                                                                     }
                                                                     §§goto(addr01db);
                                                                  }
                                                                  §§goto(addr0304);
                                                               }
                                                               §§goto(addr040b);
                                                            }
                                                            §§goto(addr038e);
                                                         }
                                                         §§goto(addr033b);
                                                      }
                                                      §§goto(addr026e);
                                                   }
                                                   §§goto(addr02f4);
                                                }
                                                §§goto(addr01ad);
                                             }
                                             §§goto(addr040b);
                                          }
                                          §§goto(addr013e);
                                       }
                                       §§goto(addr0304);
                                    }
                                    §§goto(addr034e);
                                 }
                                 addr02ad:
                                 return;
                              }
                              §§push(param1.currentTarget is PlayfieldItemInventoryRenderer);
                           }
                           §§goto(addr00c0);
                        }
                        §§goto(addr008a);
                     }
                     else
                     {
                        addr0440:
                        _loc2_ = §§pop();
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           §§goto(addr044f);
                        }
                     }
                     §§goto(addr047c);
                  }
                  §§goto(addr0072);
               }
               else
               {
                  §§push(int(dataGroup.getElementIndex(param1.currentTarget as IVisualElement)));
               }
               §§goto(addr0440);
            }
            §§goto(addr00c0);
         }
         addr047c:
      }
   }
}

