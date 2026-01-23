package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.model.residentialBook.vo.ImprovementSlotComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementSlotActiveSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementSlotExpiredSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementSlotFreeSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementSlotLockedSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementSlotPreviewSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.supportClasses.ButtonBase;
   
   public class ImprovementSlotComponent extends ButtonBase
   {
      
      public static const STATE_SLOT_LOCKED:String = "STATE_SLOT_LOCKED";
      
      public static const STATE_SLOT_FREE:String = "STATE_SLOT_FREE";
      
      public static const STATE_SLOT_ACTIVE:String = "STATE_SLOT_ACTIVE";
      
      public static const STATE_SLOT_EXPIRED:String = "STATE_SLOT_EXPIRED";
      
      public static const STATE_SLOT_PREVIEW:String = "STATE_SLOT_PREVIEW";
      
      public static const SLOT_CLICKED:String = "SLOT_CLICKED";
      
      public static const SLOT_OVER:String = "SLOT_OVER";
      
      public static const SLOT_OUT:String = "SLOT_OUT";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         STATE_SLOT_LOCKED = "STATE_SLOT_LOCKED";
         if(_loc2_ || ImprovementSlotComponent)
         {
            STATE_SLOT_FREE = "STATE_SLOT_FREE";
            if(!_loc1_)
            {
               addr0042:
               STATE_SLOT_ACTIVE = "STATE_SLOT_ACTIVE";
               if(!_loc1_)
               {
                  STATE_SLOT_EXPIRED = "STATE_SLOT_EXPIRED";
                  if(!(_loc1_ && _loc2_))
                  {
                     STATE_SLOT_PREVIEW = "STATE_SLOT_PREVIEW";
                     if(!(_loc1_ && _loc2_))
                     {
                        SLOT_CLICKED = "SLOT_CLICKED";
                        if(!_loc1_)
                        {
                           SLOT_OVER = "SLOT_OVER";
                           if(!(_loc1_ && ImprovementSlotComponent))
                           {
                              addr00aa:
                              SLOT_OUT = "SLOT_OUT";
                              if(_loc2_ || _loc1_)
                              {
                                 addr00ca:
                                 _skinParts = {
                                    "improBg":false,
                                    "infoIcon":false,
                                    "progressBarGroup":false,
                                    "slimProgressBar":false,
                                    "iconDisplay":false,
                                    "improvementGfx":false,
                                    "improBadge":false,
                                    "slotTextLabel":false,
                                    "labelDisplay":false,
                                    "unlimitedGroup":false
                                 };
                              }
                           }
                           §§goto(addr00fa);
                        }
                        §§goto(addr00aa);
                     }
                     addr00fa:
                     return;
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr00aa);
            }
            §§goto(addr00ca);
         }
         §§goto(addr00aa);
      }
      §§goto(addr0042);
      
      private var _highlight:Boolean;
      
      public var slotTextLabel:LocaLabel;
      
      public var infoIcon:BriskImageDynaLib;
      
      public var improBg:BriskImageDynaLib;
      
      public var improvementGfx:BriskImageDynaLib;
      
      public var improBadge:BriskImageDynaLib;
      
      public var slimProgressBar:SlimProgressBarTimer;
      
      public var progressBarGroup:Group;
      
      public var unlimitedGroup:Group;
      
      private var _data:ImprovementSlotComponentVo;
      
      private var _isDirty:Boolean;
      
      public function ImprovementSlotComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.commitProperties();
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§push(Boolean(this._data));
               if(_loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0066);
                        }
                        §§goto(addr0093);
                     }
                  }
                  addr0066:
                  §§goto(addr0054);
               }
               §§goto(addr0065);
            }
            §§goto(addr00a6);
         }
         addr0054:
         §§push(this._isDirty);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0065:
            §§push(§§pop());
         }
         if(§§pop())
         {
            if(!_loc3_)
            {
               this._isDirty = false;
               if(!_loc3_)
               {
                  this.removeEventListener(MouseEvent.CLICK,this.handleSlotClicked);
                  if(_loc2_ || Boolean(this))
                  {
                     addr0093:
                     this.removeEventListener(MouseEvent.MOUSE_OVER,this.handleSlotOver);
                     if(_loc2_)
                     {
                        addr00a6:
                        this.removeEventListener(MouseEvent.MOUSE_OUT,this.handleSlotOut);
                        if(!_loc3_)
                        {
                           addr00b9:
                           this.addListener();
                        }
                        §§push(this._data);
                        loop0:
                        while(true)
                        {
                           var _loc1_:* = §§pop().currentState;
                           if(_loc2_)
                           {
                              §§push(STATE_SLOT_LOCKED);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(_loc1_);
                                 if(_loc2_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(0);
                                          if(_loc2_ || _loc2_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr02be:
                                          §§push(3);
                                          if(_loc3_ && _loc2_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(STATE_SLOT_PREVIEW);
                                       if(_loc2_)
                                       {
                                          §§push(_loc1_);
                                          if(!_loc3_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   §§push(1);
                                                   if(_loc2_ || Boolean(_loc1_))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr027c:
                                                   §§push(2);
                                                   if(_loc3_ && Boolean(_loc1_))
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(STATE_SLOT_ACTIVE);
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr026d:
                                                   §§push(_loc1_);
                                                   if(_loc2_)
                                                   {
                                                      addr0273:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr027c);
                                                         }
                                                         else
                                                         {
                                                            addr02d9:
                                                            §§push(4);
                                                            if(_loc2_)
                                                            {
                                                            }
                                                         }
                                                         addr02fe:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               §§push(this.slotTextLabel);
                                                               if(_loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc2_ || Boolean(_loc1_)))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr00e2:
                                                                     this.slotTextLabel.text = this._data.slotText;
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        addr00f9:
                                                                        this.removeEventListener(MouseEvent.CLICK,this.handleSlotClicked);
                                                                        if(_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr0157:
                                                                        §§push(this.slimProgressBar);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              var _temp_20:* = §§pop();
                                                                              §§push(_temp_20);
                                                                              if(_temp_20)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr0178:
                                                                                    §§pop();
                                                                                    if(_loc3_ && Boolean(_loc1_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(this._data);
                                                                                    if(_loc3_ && Boolean(this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(Boolean(§§pop().progressVo));
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01ac:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr01b9:
                                                                                             this.slimProgressBar.data = this._data.progressVo;
                                                                                             addr01b5:
                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr0329:
                                                                                             if(skin.currentState != "highlightOver")
                                                                                             {
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   skin.setCurrentState("highlight");
                                                                                                }
                                                                                             }
                                                                                             break loop0;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr0320:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    §§goto(addr0329);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01ac);
                                                                           }
                                                                           §§goto(addr0178);
                                                                        }
                                                                        §§goto(addr01b9);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0144:
                                                                        this.setProgressVisibility();
                                                                        if(_loc2_ || Boolean(this))
                                                                        {
                                                                           §§goto(addr0157);
                                                                        }
                                                                     }
                                                                     §§goto(addr0329);
                                                                  }
                                                                  §§goto(addr00f9);
                                                               }
                                                               §§goto(addr00e2);
                                                            case 1:
                                                               this.setImprovementData();
                                                               if(_loc2_)
                                                               {
                                                                  this.setProgressVisibility();
                                                                  if(_loc2_ || Boolean(_loc1_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr01b5);
                                                               }
                                                               §§goto(addr0329);
                                                            case 2:
                                                               this.setImprovementData();
                                                               if(!(_loc3_ && Boolean(_loc1_)))
                                                               {
                                                                  §§goto(addr0144);
                                                               }
                                                               §§goto(addr01b5);
                                                            case 3:
                                                               this.setImprovementData();
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               break loop0;
                                                            case 4:
                                                         }
                                                         §§goto(addr0320);
                                                         §§push(this.highlight);
                                                      }
                                                      else
                                                      {
                                                         §§push(STATE_SLOT_EXPIRED);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr029f:
                                                            §§push(_loc1_);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§goto(addr02be);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr02d9);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr02d5:
                                                                  addr02d4:
                                                                  if(STATE_SLOT_FREE === _loc1_)
                                                                  {
                                                                     §§goto(addr02d9);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(5);
                                                                  }
                                                                  §§goto(addr02fe);
                                                               }
                                                               §§goto(addr02d9);
                                                            }
                                                            §§goto(addr02d5);
                                                         }
                                                         §§goto(addr02d4);
                                                      }
                                                      §§goto(addr02d9);
                                                   }
                                                   §§goto(addr02d5);
                                                }
                                                §§goto(addr02d4);
                                             }
                                             §§goto(addr02fe);
                                          }
                                          §§goto(addr02d5);
                                       }
                                       §§goto(addr026d);
                                    }
                                    §§goto(addr02fe);
                                 }
                                 §§goto(addr0273);
                              }
                              §§goto(addr029f);
                           }
                           §§goto(addr02be);
                        }
                        §§goto(addr034d);
                     }
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr0093);
            }
            §§goto(addr00b9);
         }
         addr034d:
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.addEventListener(MouseEvent.CLICK,this.handleSlotClicked);
            if(_loc2_)
            {
               this.addEventListener(MouseEvent.MOUSE_OVER,this.handleSlotOver);
               if(!_loc1_)
               {
                  this.addEventListener(MouseEvent.MOUSE_OUT,this.handleSlotOut);
               }
            }
         }
      }
      
      private function setImprovementData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.improBg);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || Boolean(this))
                  {
                     addr003b:
                     this.improBg.briskDynaVo = this._data.improvementBgData;
                     if(!(_loc2_ && _loc1_))
                     {
                        addr005d:
                        §§push(this.improBadge);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 addr0073:
                                 this.improBadge.briskDynaVo = this._data.improvementBadgeData;
                                 if(!_loc2_)
                                 {
                                    addr008d:
                                    §§push(this.improvementGfx);
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc1_ || Boolean(this))
                                          {
                                             addr00b3:
                                             this.improvementGfx.briskDynaVo = this._data.improvementGfx;
                                             addr00af:
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr00af);
                              }
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr0073);
                     }
                     §§goto(addr00af);
                     addr0037:
                  }
               }
               §§goto(addr005d);
            }
            §§goto(addr003b);
         }
         §§goto(addr0037);
      }
      
      private function setProgressVisibility() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this.progressBarGroup)
            {
               if(!(_loc3_ && _loc1_))
               {
                  var _temp_3:* = this.progressBarGroup;
                  var _loc1_:*;
                  this.progressBarGroup.includeInLayout = _loc1_ = this._data.improvementVo.runtime != -1;
                  _temp_3.visible = _loc1_;
                  if(_loc2_)
                  {
                     §§goto(addr005e);
                  }
               }
               §§goto(addr007d);
            }
            addr005e:
            if(this.unlimitedGroup)
            {
               if(_loc2_ || _loc1_)
               {
                  addr007d:
                  this.unlimitedGroup.visible = this.unlimitedGroup.includeInLayout = this._data.improvementVo.runtime == -1;
               }
            }
            return;
         }
         §§goto(addr007d);
      }
      
      private function handleSlotOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            dispatchEvent(new Event(SLOT_OUT,true));
         }
      }
      
      private function handleSlotOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            dispatchEvent(new Event(SLOT_OVER,true));
         }
      }
      
      private function handleSlotClicked(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            dispatchEvent(new Event(SLOT_CLICKED,true));
         }
      }
      
      public function set data(param1:ImprovementSlotComponentVo) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(_loc2_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  this._data = param1;
                  if(_loc3_)
                  {
                     addr003e:
                     this._isDirty = true;
                  }
               }
               var _loc2_:* = this._data.currentState;
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push(STATE_SLOT_LOCKED);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              §§push(0);
                              if(_loc4_ && _loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr015a:
                              §§push(1);
                              if(_loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(STATE_SLOT_FREE);
                           if(_loc3_)
                           {
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr015a);
                                    }
                                    else
                                    {
                                       addr01d6:
                                       §§push(4);
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(STATE_SLOT_ACTIVE);
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       addr0175:
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          addr017c:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(2);
                                                if(_loc3_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr01d6);
                                             }
                                             §§goto(addr01ee);
                                          }
                                          else
                                          {
                                             §§push(STATE_SLOT_EXPIRED);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(_loc2_);
                                                if(_loc3_)
                                                {
                                                   addr01a8:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(3);
                                                         if(_loc3_ || Boolean(param1))
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr01d6);
                                                      }
                                                      §§goto(addr01ee);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr01d2);
                                                   }
                                                }
                                                addr01d2:
                                             }
                                             §§goto(addr01d1);
                                          }
                                       }
                                       §§goto(addr01d2);
                                    }
                                    addr01d1:
                                    if(STATE_SLOT_PREVIEW === _loc2_)
                                    {
                                       §§goto(addr01d6);
                                    }
                                    else
                                    {
                                       §§push(5);
                                    }
                                 }
                                 §§goto(addr01ee);
                              }
                              §§goto(addr01a8);
                           }
                           §§goto(addr0175);
                        }
                        addr01ee:
                        switch(§§pop())
                        {
                           case 0:
                              setStyle("skinClass",ImprovementSlotLockedSkin);
                              if(_loc4_)
                              {
                              }
                              addr020d:
                              invalidateProperties();
                              break;
                           case 1:
                              setStyle("skinClass",ImprovementSlotFreeSkin);
                              if(_loc4_)
                              {
                              }
                              §§goto(addr020d);
                           case 2:
                              setStyle("skinClass",ImprovementSlotActiveSkin);
                              if(_loc4_)
                              {
                              }
                              §§goto(addr020d);
                           case 3:
                              setStyle("skinClass",ImprovementSlotExpiredSkin);
                              if(_loc3_ || Boolean(_loc2_))
                              {
                              }
                              §§goto(addr020d);
                           case 4:
                              setStyle("skinClass",ImprovementSlotPreviewSkin);
                              if(_loc4_ && _loc3_)
                              {
                              }
                              §§goto(addr020d);
                           default:
                              setStyle("skinClass",ImprovementSlotFreeSkin);
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                              §§goto(addr020d);
                        }
                        §§goto(addr0212);
                     }
                     §§goto(addr017c);
                  }
                  §§goto(addr01d1);
               }
               §§goto(addr01d6);
            }
            addr0212:
            return;
         }
         §§goto(addr003e);
      }
      
      public function set highlight(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._highlight = param1;
            if(!_loc2_)
            {
               if(this._highlight)
               {
                  if(_loc3_ || _loc2_)
                  {
                     skin.setCurrentState("highlight",true);
                     if(_loc2_)
                     {
                     }
                  }
               }
               else
               {
                  skin.setCurrentState("up",true);
               }
            }
         }
      }
      
      public function get currentSlotState() : String
      {
         return this._data.currentState;
      }
      
      public function get highlight() : Boolean
      {
         return this._highlight;
      }
      
      public function get data() : ImprovementSlotComponentVo
      {
         return this._data;
      }
   }
}

