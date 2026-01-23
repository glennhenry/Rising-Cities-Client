package net.bigpoint.cityrama.view.storageBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.storage.vo.StorageObjectVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class StorageItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static var REBUY_GOOD:String = "REBUY_GOOD";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         REBUY_GOOD = "REBUY_GOOD";
      }
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1788023724emptySlotGroup:HGroup;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _361121306improBadge:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var _525604071storageSlot:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:StorageObjectVo;
      
      private var _isDirty:Boolean;
      
      public function StorageItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.autoDrawBackground = false;
                  if(_loc1_ || _loc2_)
                  {
                     this.width = 120;
                     if(_loc1_)
                     {
                        this.height = 150;
                        if(_loc1_ || _loc2_)
                        {
                           this.mxmlContent = [this._StorageItemRenderer_Group1_i(),this._StorageItemRenderer_HGroup2_i()];
                           if(!_loc2_)
                           {
                              §§goto(addr007e);
                           }
                           §§goto(addr00bc);
                        }
                        addr007e:
                        this.currentState = "normal";
                        if(!(_loc2_ && _loc1_))
                        {
                           this.addEventListener("rollOver",this.___StorageItemRenderer_ItemRenderer1_rollOver);
                           if(_loc1_)
                           {
                              addr00a3:
                              this.addEventListener("rollOut",this.___StorageItemRenderer_ItemRenderer1_rollOut);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 this.addEventListener("click",this.___StorageItemRenderer_ItemRenderer1_click);
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00d7);
                           }
                           addr00bc:
                           if(!_loc2_)
                           {
                              addr00d7:
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[]
                              }),new State({
                                 "name":"disabled",
                                 "overrides":[]
                              })];
                           }
                        }
                     }
                     §§goto(addr00ff);
                  }
                  §§goto(addr00d7);
               }
               §§goto(addr00a3);
            }
            §§goto(addr00bc);
         }
         addr00ff:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
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
                  addr0055:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0055);
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
      
      override public function get data() : Object
      {
         return super.data;
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(!RandomUtilities.isEqual(super.data,param1))
            {
               if(!(_loc2_ && _loc2_))
               {
                  super.data = param1;
                  if(_loc3_)
                  {
                     this._data = param1 as StorageObjectVo;
                     if(!_loc2_)
                     {
                        addr006c:
                        this._isDirty = true;
                        if(_loc3_)
                        {
                           invalidateProperties();
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
         }
         addr007b:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.commitProperties();
            if(_loc3_ || _loc2_)
            {
               §§push(this._data);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && Boolean(this)))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this._isDirty);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(§§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr006f);
                                 }
                                 §§goto(addr00ac);
                              }
                              §§goto(addr015a);
                           }
                           §§goto(addr00db);
                        }
                     }
                  }
                  addr006f:
                  if(§§pop())
                  {
                     if(_loc3_ || _loc1_)
                     {
                        this._isDirty = false;
                        if(_loc3_ || _loc1_)
                        {
                           §§push(this._data);
                           if(_loc3_)
                           {
                              addr009b:
                              §§push(§§pop().showEmptySlot());
                              if(_loc3_ || _loc1_)
                              {
                                 addr00ac:
                                 if(!§§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       var _temp_12:* = this.plusIcon;
                                       var _loc1_:*;
                                       this.plusIcon.includeInLayout = _loc1_ = this._data.showPlus();
                                       _temp_12.visible = _loc1_;
                                       if(!_loc2_)
                                       {
                                          addr00db:
                                          this.itemLabel.text = LocaUtils.getThousendSeperatedNumber(this._data.currentStock);
                                          if(!_loc2_)
                                          {
                                             addr00f3:
                                             §§push(this.image);
                                             if(!_loc2_)
                                             {
                                                §§push(this._data);
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§pop().alpha = §§pop().imageAlpha;
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      §§push(this.image);
                                                      if(_loc3_)
                                                      {
                                                         addr012e:
                                                         §§pop().briskDynaVo = this._data.imageData;
                                                         if(_loc3_)
                                                         {
                                                            this.backgroundPrint.briskDynaVo = this._data.getBackgroundPrintByIndex(itemIndex);
                                                            if(_loc3_)
                                                            {
                                                               addr015a:
                                                               addr0156:
                                                               if(this._data.showBadge())
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§push(this.improBadge);
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§pop().briskDynaVo = this._data.badgeData();
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           addr01a0:
                                                                           §§push(this.improBadge);
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(this.improBadge);
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 §§push(true);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    var _temp_19:* = §§pop();
                                                                                    §§push(_temp_19);
                                                                                    §§push(_temp_19);
                                                                                    if(_loc3_ || Boolean(this))
                                                                                    {
                                                                                       _loc1_ = §§pop();
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§pop().visible = §§pop();
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§pop().includeInLayout = §§pop();
                                                                                                   if(!(_loc2_ && _loc1_))
                                                                                                   {
                                                                                                      §§goto(addr021a);
                                                                                                   }
                                                                                                   §§goto(addr024e);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr020b:
                                                                                                   §§pop().includeInLayout = §§pop();
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      addr021a:
                                                                                                      §§push(this.image);
                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                      {
                                                                                                         addr022b:
                                                                                                         §§push(false);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§pop().mouseEnabled = §§pop();
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§goto(addr023e);
                                                                                                            }
                                                                                                            §§goto(addr02ba);
                                                                                                         }
                                                                                                         addr023e:
                                                                                                         this.image.mouseChildren = false;
                                                                                                         §§goto(addr023d);
                                                                                                      }
                                                                                                      addr023d:
                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                      {
                                                                                                         addr024e:
                                                                                                         this.storageSlot.includeInLayout = this.storageSlot.visible = true;
                                                                                                         if(_loc3_ || Boolean(this))
                                                                                                         {
                                                                                                            addr026d:
                                                                                                            this.emptySlotGroup.includeInLayout = this.emptySlotGroup.visible = false;
                                                                                                            if(!(_loc3_ || _loc2_))
                                                                                                            {
                                                                                                               addr02ba:
                                                                                                               this.emptySlotGroup.includeInLayout = this.emptySlotGroup.visible = true;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr02cc);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr02cc);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0209:
                                                                                             }
                                                                                             §§goto(addr020b);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0208:
                                                                                             §§push(_loc1_);
                                                                                          }
                                                                                          §§goto(addr0209);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0206:
                                                                                          §§pop().visible = §§pop();
                                                                                       }
                                                                                       §§goto(addr0208);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0205:
                                                                                       _loc1_ = §§pop();
                                                                                    }
                                                                                    §§goto(addr0206);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0204:
                                                                                    var _temp_27:* = §§pop();
                                                                                    §§push(_temp_27);
                                                                                    §§push(_temp_27);
                                                                                 }
                                                                                 §§goto(addr0205);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0203:
                                                                                 §§push(false);
                                                                              }
                                                                              §§goto(addr0204);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01ff:
                                                                              §§push(this.improBadge);
                                                                           }
                                                                           §§goto(addr0203);
                                                                        }
                                                                        §§goto(addr02cc);
                                                                     }
                                                                     §§goto(addr01ff);
                                                                  }
                                                                  §§goto(addr02cc);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.improBadge);
                                                               }
                                                               §§goto(addr01ff);
                                                            }
                                                         }
                                                         §§goto(addr026d);
                                                      }
                                                      §§goto(addr023d);
                                                   }
                                                   §§goto(addr021a);
                                                }
                                                §§goto(addr012e);
                                             }
                                             §§goto(addr022b);
                                          }
                                          §§goto(addr01a0);
                                       }
                                       §§goto(addr00f3);
                                    }
                                 }
                                 else
                                 {
                                    var _temp_28:* = this.storageSlot;
                                    this.storageSlot.visible = _loc1_ = false;
                                    _temp_28.includeInLayout = _loc1_;
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§goto(addr02ba);
                                    }
                                 }
                                 §§goto(addr02cc);
                              }
                              §§goto(addr015a);
                           }
                           §§goto(addr0156);
                        }
                        §§goto(addr02ba);
                     }
                     §§goto(addr00f3);
                  }
                  §§goto(addr02cc);
               }
               §§goto(addr009b);
            }
            addr02cc:
            return;
         }
         §§goto(addr021a);
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            §§push(this._data);
            if(!_loc3_)
            {
               §§push(§§pop().showEmptySlot());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this._data.goodObjectVo != null ? UIInfolayerDispatcherEvent.CALLER_TYPE_GOOD : UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT,this._data.configId,true,false));
                        if(_loc2_)
                        {
                           §§goto(addr0083);
                        }
                     }
                     §§goto(addr00c8);
                  }
                  addr0083:
                  §§goto(addr008b);
               }
               addr008b:
               §§goto(addr0087);
            }
            addr0087:
            if(this._data.showPlus())
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr00a8:
                  §§push(this.plusIcon);
                  if(_loc2_)
                  {
                     §§push(this.plusIcon);
                     if(_loc2_)
                     {
                        §§pop().scaleX = §§pop().scaleX + 0.05;
                        if(!_loc3_)
                        {
                           addr00d0:
                           this.plusIcon.scaleY += 0.05;
                           addr00cc:
                           addr00c8:
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr00c8);
            }
            addr00d9:
            return;
         }
         §§goto(addr00a8);
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(this._data);
            if(!_loc3_)
            {
               §§push(§§pop().showEmptySlot());
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this._data.goodObjectVo != null ? UIInfolayerDispatcherEvent.CALLER_TYPE_GOOD : UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT,this._data.configId,true,false));
                        if(_loc2_ || _loc2_)
                        {
                           addr0093:
                           addr00a6:
                           addr00a2:
                           if(this._data.showPlus())
                           {
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 §§push(this.plusIcon);
                                 if(_loc2_)
                                 {
                                    §§push(1);
                                    if(_loc2_)
                                    {
                                       §§pop().scaleX = §§pop();
                                       if(!_loc3_)
                                       {
                                          addr00d5:
                                          this.plusIcon.scaleY = 1;
                                          addr00d3:
                                          addr00cf:
                                       }
                                       §§goto(addr00d8);
                                    }
                                    §§goto(addr00d5);
                                 }
                                 §§goto(addr00d3);
                              }
                           }
                        }
                        addr00d8:
                        return;
                     }
                  }
                  §§goto(addr0093);
               }
               §§goto(addr00a6);
            }
            §§goto(addr00a2);
         }
         §§goto(addr00cf);
      }
      
      private function onClicked(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._data.showPlus())
            {
               if(!_loc3_)
               {
                  dispatchEvent(new Event(REBUY_GOOD,true));
               }
            }
         }
      }
      
      private function _StorageItemRenderer_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._StorageItemRenderer_BriskImageDynaLib1_c(),this._StorageItemRenderer_BriskImageDynaLib2_i(),this._StorageItemRenderer_BriskImageDynaLib3_i(),this._StorageItemRenderer_HGroup1_c(),this._StorageItemRenderer_BriskMCDynaLib1_c(),this._StorageItemRenderer_BriskImageDynaLib5_i(),this._StorageItemRenderer_BriskImageDynaLib6_i()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr007b);
                  }
                  §§goto(addr009d);
               }
               addr007b:
               _loc1_.id = "storageSlot";
               if(_loc3_)
               {
                  addr0086:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr009d:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr00a6:
                           this.storageSlot = _loc1_;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00b8:
                              BindingManager.executeBindings(this,"storageSlot",this.storageSlot);
                           }
                        }
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr00a6);
               }
               addr00c5:
               return _loc1_;
            }
            §§goto(addr0086);
         }
         §§goto(addr00b8);
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.bottom = 2;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.dynaBmpSourceName = "architect_postit_price";
                     addr0055:
                     if(_loc3_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0088:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0088);
                  }
                  addr008c:
                  return _loc1_;
               }
               §§goto(addr0055);
            }
            §§goto(addr0088);
         }
         §§goto(addr0055);
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_storagePopup";
            if(!(_loc2_ && _loc3_))
            {
               addr0033:
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 6;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.dynaBmpSourceName = "ressource_cardboard1_small";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "backgroundPrint";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0089:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr00a2);
                              }
                           }
                           §§goto(addr00b3);
                        }
                        addr00a2:
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00b3:
                           this.backgroundPrint = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
                           }
                        }
                        §§goto(addr00ca);
                     }
                     addr00ca:
                     return _loc1_;
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0089);
            }
            §§goto(addr00a2);
         }
         §§goto(addr0033);
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = -12;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr006c:
                     _loc1_.id = "image";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0090:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr0099);
                              }
                           }
                           §§goto(addr00a3);
                        }
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr00a3);
               }
               addr0099:
               this.image = _loc1_;
               if(!_loc3_)
               {
                  addr00a3:
                  BindingManager.executeBindings(this,"image",this.image);
               }
               return _loc1_;
            }
            §§goto(addr006c);
         }
         §§goto(addr0090);
      }
      
      private function _StorageItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.bottom = 7;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.left = 16;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.right = 16;
                     if(_loc3_ || Boolean(this))
                     {
                        addr007a:
                        _loc1_.mxmlContent = [this._StorageItemRenderer_BriskImageDynaLib4_c(),this._StorageItemRenderer_LocaLabel1_i()];
                        if(_loc3_)
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009c:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr009c);
                     }
                     addr00a0:
                     return _loc1_;
                  }
               }
               §§goto(addr0090);
            }
         }
         §§goto(addr007a);
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_storagePopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               addr004c:
               _loc1_.dynaBmpSourceName = "icon_product";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§goto(addr0060);
               }
               §§goto(addr006c);
            }
            addr0060:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr006c:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _StorageItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "priceLabel";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc2_)
               {
                  addr0051:
                  _loc1_.id = "itemLabel";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr007c:
                              this.itemLabel = _loc1_;
                              if(_loc3_)
                              {
                                 addr0086:
                                 BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                              }
                           }
                        }
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0086);
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _StorageItemRenderer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.top = 0;
               if(_loc2_)
               {
                  addr0052:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006e:
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr008e);
                  }
               }
               addr0092:
               return _loc1_;
            }
            §§goto(addr0052);
         }
         §§goto(addr006e);
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
               if(!_loc2_)
               {
                  _loc1_.top = 7;
                  if(_loc3_ || _loc3_)
                  {
                     addr0046:
                     _loc1_.right = 1;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.visible = false;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0075:
                           _loc1_.includeInLayout = false;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0086:
                              _loc1_.id = "plusIcon";
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00b2:
                                       _loc1_.document = this;
                                       if(_loc3_)
                                       {
                                          addr00bb:
                                          this.plusIcon = _loc1_;
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00cd:
                                             BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
                                          }
                                          §§goto(addr00da);
                                       }
                                       §§goto(addr00cd);
                                    }
                                    addr00da:
                                    return _loc1_;
                                 }
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr00cd);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr00cd);
               }
               §§goto(addr0086);
            }
            §§goto(addr00b2);
         }
         §§goto(addr0046);
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "hip_badge_common_small";
               if(!(_loc2_ && _loc3_))
               {
                  addr004f:
                  _loc1_.top = 6;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.left = 3;
                     if(!_loc2_)
                     {
                        _loc1_.visible = false;
                        if(!_loc2_)
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc3_)
                           {
                              _loc1_.id = "improBadge";
                              if(_loc3_ || _loc2_)
                              {
                                 addr009d:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00a9:
                                       _loc1_.document = this;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00c6:
                                          this.improBadge = _loc1_;
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00d8:
                                             BindingManager.executeBindings(this,"improBadge",this.improBadge);
                                          }
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00c6);
                              }
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00d8);
                     }
                  }
                  §§goto(addr009d);
               }
               §§goto(addr00c6);
            }
         }
         §§goto(addr004f);
      }
      
      private function _StorageItemRenderer_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.top = 6;
                  if(!_loc3_)
                  {
                     addr004e:
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.visible = false;
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0090);
                           }
                           §§goto(addr00cc);
                        }
                        addr0090:
                        _loc1_.mxmlContent = [this._StorageItemRenderer_BriskImageDynaLib7_c()];
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.id = "emptySlotGroup";
                           if(!_loc3_)
                           {
                              addr00b3:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00cc:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00dd:
                                       this.emptySlotGroup = _loc1_;
                                       if(_loc2_)
                                       {
                                          BindingManager.executeBindings(this,"emptySlotGroup",this.emptySlotGroup);
                                       }
                                    }
                                    §§goto(addr00f4);
                                 }
                              }
                              §§goto(addr00dd);
                           }
                        }
                        §§goto(addr00f4);
                     }
                  }
                  §§goto(addr00b3);
               }
               addr00f4:
               return _loc1_;
            }
         }
         §§goto(addr004e);
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_storagePopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "emptySlot_bg";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0077:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr007b);
               }
            }
            §§goto(addr0077);
         }
         addr007b:
         return _loc1_;
      }
      
      public function ___StorageItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.mouseOverHandler(param1);
         }
      }
      
      public function ___StorageItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.mouseOutHandler(param1);
         }
      }
      
      public function ___StorageItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.onClicked(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundPrint() : BriskImageDynaLib
      {
         return this._1299216927backgroundPrint;
      }
      
      public function set backgroundPrint(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1299216927backgroundPrint;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1299216927backgroundPrint = param1;
                  if(_loc4_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0060);
            }
         }
         addr0086:
      }
      
      [Bindable(event="propertyChange")]
      public function get emptySlotGroup() : HGroup
      {
         return this._1788023724emptySlotGroup;
      }
      
      public function set emptySlotGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1788023724emptySlotGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1788023724emptySlotGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emptySlotGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0079);
            }
         }
         addr0088:
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._100313435image;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._100313435image = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get improBadge() : BriskImageDynaLib
      {
         return this._361121306improBadge;
      }
      
      public function set improBadge(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._361121306improBadge;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004f:
                  this._361121306improBadge = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improBadge",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2135689121itemLabel;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._2135689121itemLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0067);
            }
         }
         addr0086:
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1849499341plusIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr004e:
                  this._1849499341plusIcon = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get storageSlot() : Group
      {
         return this._525604071storageSlot;
      }
      
      public function set storageSlot(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._525604071storageSlot;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._525604071storageSlot = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0067);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storageSlot",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
   }
}

