package net.bigpoint.cityrama.view.playfieldItemInventory.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.events.PlayfieldItemInventoryEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.ItemRenderer;
   
   public class PlayfieldItemInventoryRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _3533310slot:PlayfieldItemInventorySlotComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:PlayfieldItemInventoryListItemVo;
      
      private var _isDirty:Boolean;
      
      private var _currentState:String = "";
      
      public function PlayfieldItemInventoryRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  this.minHeight = 87;
                  if(_loc1_)
                  {
                     addr0052:
                     this.minWidth = 82;
                     if(_loc1_ || _loc1_)
                     {
                        addr0065:
                        this.autoDrawBackground = false;
                        if(_loc1_ || _loc1_)
                        {
                           this.mxmlContent = [this._PlayfieldItemInventoryRenderer_PlayfieldItemInventorySlotComponent1_i()];
                           if(!_loc2_)
                           {
                              addr0091:
                              this.currentState = "normal";
                              if(_loc1_ || Boolean(this))
                              {
                                 addr00a5:
                                 this.addEventListener("rollOver",this.___PlayfieldItemInventoryRenderer_ItemRenderer1_rollOver);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§goto(addr00be);
                                 }
                                 §§goto(addr00d7);
                              }
                              addr00be:
                              this.addEventListener("rollOut",this.___PlayfieldItemInventoryRenderer_ItemRenderer1_rollOut);
                              if(_loc1_ || Boolean(this))
                              {
                                 states = [new State({
                                    "name":"normal",
                                    "overrides":[]
                                 }),new State({
                                    "name":"disabled",
                                    "overrides":[]
                                 }),new State({
                                    "name":"selected",
                                    "overrides":[]
                                 }),new State({
                                    "name":"overSelected",
                                    "overrides":[]
                                 }),new State({
                                    "name":"over",
                                    "overrides":[]
                                 })];
                                 addr00d7:
                              }
                              §§goto(addr013c);
                           }
                           addr013c:
                           return;
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0065);
            }
            §§goto(addr0052);
         }
         §§goto(addr00d7);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0054);
                  }
               }
               else
               {
                  addr0062:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0054:
            return;
         }
         §§goto(addr0062);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               addr0030:
               §§push(Boolean(this._data));
               if(!_loc1_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           addr0054:
                           §§push(this._isDirty);
                           if(_loc2_)
                           {
                              addr0053:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 this._isDirty = false;
                                 if(!_loc1_)
                                 {
                                    if(!this.selected)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          this._currentState = "normal";
                                          if(_loc2_ || _loc2_)
                                          {
                                             this.setCurrentState("normal");
                                             if(_loc1_)
                                             {
                                                §§goto(addr00cf);
                                             }
                                          }
                                          §§goto(addr00d9);
                                       }
                                    }
                                    else
                                    {
                                       this.selected = false;
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr00cf:
                                          this.selected = true;
                                          if(!_loc1_)
                                          {
                                             addr00d9:
                                             this.slot.data = this._data;
                                          }
                                          §§goto(addr00e3);
                                       }
                                    }
                                 }
                                 §§goto(addr00e3);
                              }
                              §§goto(addr00d9);
                           }
                        }
                        addr00e3:
                        return;
                     }
                     §§goto(addr0053);
                  }
                  §§goto(addr0054);
               }
               §§goto(addr0053);
            }
            §§goto(addr00d9);
         }
         §§goto(addr0030);
      }
      
      private function handleRollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(this.slot.alpha == 1)
            {
               if(_loc3_)
               {
                  if(!selected)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this.setCurrentState("over");
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr008c:
                           dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OVER,true,this._data));
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr008c);
                  }
                  else
                  {
                     this.setCurrentState("overSelected");
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr008c);
                     }
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr008c);
            }
            addr00a3:
            return;
         }
         §§goto(addr008c);
      }
      
      private function handleRollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(this.slot.alpha == 1)
            {
               if(!_loc2_)
               {
                  if(!selected)
                  {
                     if(_loc3_)
                     {
                        addr0048:
                        this.setCurrentState("normal");
                        if(_loc3_ || _loc2_)
                        {
                           addr0083:
                           dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OUT,true,this._data));
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0083);
                  }
                  else
                  {
                     this.setCurrentState("selected");
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        §§goto(addr0083);
                     }
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0048);
            }
            addr009a:
            return;
         }
         §§goto(addr0048);
      }
      
      override protected function getCurrentRendererState() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._currentState);
            if(_loc2_)
            {
               if(§§pop() != "")
               {
                  if(_loc2_)
                  {
                     §§goto(addr0040);
                  }
               }
               §§goto(addr0041);
            }
            addr0040:
            return this._currentState;
         }
         addr0041:
         return super.getCurrentRendererState();
      }
      
      override public function set selected(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || param1)
         {
            §§push(this._data);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     return;
                  }
                  addr01bd:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        var _temp_4:* = §§pop();
                        addr01ca:
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(_loc4_ || param1)
                           {
                              addr01dc:
                              §§pop();
                              addr01dd:
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 addr01e3:
                                 §§push(§§pop() == selected);
                                 if(_loc4_)
                                 {
                                    §§goto(addr01fc);
                                 }
                              }
                           }
                        }
                        §§goto(addr01fb);
                     }
                     §§goto(addr01fc);
                  }
                  §§goto(addr01dc);
               }
               else
               {
                  §§push(this._data);
                  if(!_loc3_)
                  {
                     §§push(§§pop().slotState);
                     if(_loc4_)
                     {
                        §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_FREE);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push(this._data);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push(Boolean(§§pop().itemAtCursor));
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       var _temp_11:* = §§pop();
                                       §§push(_temp_11);
                                       §§push(_temp_11);
                                       if(_loc4_ || param1)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §§pop();
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(param1);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc4_)
                                                      {
                                                         addr00d1:
                                                         if(§§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.INVENTORY_ITEM_CLICK,true,this._data));
                                                               if(!_loc3_)
                                                               {
                                                                  return;
                                                               }
                                                               §§goto(addr01dd);
                                                            }
                                                            else
                                                            {
                                                               addr0130:
                                                               §§push(param1);
                                                               if(!_loc3_)
                                                               {
                                                                  addr0136:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(currentState == "over")
                                                                        {
                                                                           if(!(_loc3_ && Boolean(this)))
                                                                           {
                                                                              addr0157:
                                                                              this._currentState = "overSelected";
                                                                              if(_loc3_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           this._currentState = "selected";
                                                                           if(!(_loc4_ || _loc3_))
                                                                           {
                                                                              addr0198:
                                                                              this._currentState = "over";
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr01bd);
                                                                     }
                                                                     §§goto(addr0157);
                                                                  }
                                                                  else if(currentState == "overSelected")
                                                                  {
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§goto(addr0198);
                                                                     }
                                                                     §§goto(addr01bd);
                                                                  }
                                                                  else
                                                                  {
                                                                     this._currentState = "normal";
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr01bd);
                                                                     }
                                                                  }
                                                                  §§goto(addr01dd);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0109:
                                                            addr0105:
                                                            addr0112:
                                                            addr010c:
                                                            if(this._data.slotState != PlayfieldItemInventorySlotComponent.STATE_SLOT_OCCUPIED)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  return;
                                                               }
                                                               §§goto(addr01bd);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr0130);
                                                            }
                                                         }
                                                         §§goto(addr01fc);
                                                      }
                                                   }
                                                   §§goto(addr01e3);
                                                }
                                                §§goto(addr0157);
                                             }
                                             §§goto(addr0136);
                                          }
                                          §§goto(addr00d1);
                                       }
                                       §§goto(addr01ca);
                                    }
                                    §§goto(addr01fc);
                                 }
                                 §§goto(addr0109);
                              }
                              §§goto(addr01dd);
                           }
                           §§goto(addr0105);
                        }
                        §§goto(addr0112);
                     }
                     §§goto(addr010c);
                  }
                  §§goto(addr0109);
               }
               addr01fc:
               §§push(!§§pop());
               if(!(_loc3_ && Boolean(this)))
               {
                  addr01fb:
                  §§push(§§pop());
               }
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  super.selected = param1;
                  if(_loc4_)
                  {
                     if(_loc2_)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           addr0220:
                           if(this._data == null)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr023b);
                              }
                           }
                           else
                           {
                              dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.INVENTORY_SELECTION_CHANGED,true,this._data,itemIndex));
                           }
                           §§goto(addr0263);
                        }
                        §§goto(addr023b);
                     }
                     addr0263:
                     return;
                  }
                  §§goto(addr0220);
               }
               addr023b:
               return;
            }
            §§goto(addr0109);
         }
         §§goto(addr01bd);
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this._currentState = param1;
            if(!(_loc4_ && Boolean(this)))
            {
               super.setCurrentState(param1,param2);
               if(_loc3_ || Boolean(this))
               {
                  addr004a:
                  this.slot.setCurrentState(param1,param2);
               }
               return;
            }
         }
         §§goto(addr004a);
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.data = param1;
            if(!_loc2_)
            {
               if(!RandomUtilities.isEqual(this._data,param1))
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0061:
                     this._isDirty = true;
                     if(_loc3_)
                     {
                        addr006b:
                        this._data = param1 as PlayfieldItemInventoryListItemVo;
                        if(_loc3_)
                        {
                           addr0079:
                           invalidateProperties();
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006b);
               }
               addr007e:
               return;
            }
            §§goto(addr0079);
         }
         §§goto(addr0061);
      }
      
      public function get currentData() : PlayfieldItemInventoryListItemVo
      {
         return this._data;
      }
      
      override public function get measuredWidth() : Number
      {
         return minWidth;
      }
      
      private function _PlayfieldItemInventoryRenderer_PlayfieldItemInventorySlotComponent1_i() : PlayfieldItemInventorySlotComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PlayfieldItemInventorySlotComponent = new PlayfieldItemInventorySlotComponent();
         if(_loc2_)
         {
            _loc1_.id = "slot";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0053:
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0064:
                        this.slot = _loc1_;
                        if(_loc2_)
                        {
                           addr006e:
                           BindingManager.executeBindings(this,"slot",this.slot);
                        }
                        §§goto(addr007b);
                     }
                     §§goto(addr006e);
                  }
                  addr007b:
                  return _loc1_;
               }
               §§goto(addr0064);
            }
            §§goto(addr0053);
         }
         §§goto(addr0064);
      }
      
      public function ___PlayfieldItemInventoryRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.handleRollOver(param1);
         }
      }
      
      public function ___PlayfieldItemInventoryRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.handleRollOut(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot() : PlayfieldItemInventorySlotComponent
      {
         return this._3533310slot;
      }
      
      public function set slot(param1:PlayfieldItemInventorySlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3533310slot;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._3533310slot = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot",_loc2_,param1));
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
         §§goto(addr0052);
      }
   }
}

