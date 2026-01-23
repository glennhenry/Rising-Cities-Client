package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.patterns.facade.Facade;
   import spark.components.Button;
   import spark.components.Group;
   
   public class ConfirmablePlusButton extends Button
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         _skinParts = {
            "plusIcon":false,
            "labelDisplay":false,
            "iconDisplay":false
         };
      }
      
      public var plusIcon:BriskImageDynaLib;
      
      private var _priceToConfirm:Number = -1;
      
      private var _useConfirmation:Boolean = false;
      
      protected var _showPlus:Boolean = false;
      
      private var _confirmLayer:ConfirmationInfoLayer;
      
      private var _confirmationContainer:Group;
      
      private var _justConfirmed:Boolean;
      
      private var _lastClickEvent:MouseEvent;
      
      public function ConfirmablePlusButton()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override protected function clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            §§push(this._showPlus);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(_loc2_ || _loc3_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr0046:
                           §§pop();
                           if(_loc2_ || Boolean(param1))
                           {
                              addr0054:
                              §§push(this.useConfirmation);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    addr006b:
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    §§push(_temp_6);
                                    if(!_loc3_)
                                    {
                                       addr0071:
                                       if(§§pop())
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§pop();
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                §§push(this._priceToConfirm == -1);
                                                if(_loc2_)
                                                {
                                                   §§push(!§§pop());
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      addr00aa:
                                                      var _temp_10:* = §§pop();
                                                      addr00ab:
                                                      §§push(_temp_10);
                                                      if(_temp_10)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr00b4:
                                                            §§pop();
                                                            if(_loc2_ || Boolean(this))
                                                            {
                                                               addr00d4:
                                                               addr00c2:
                                                               §§push(this._justConfirmed);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  addr00d3:
                                                                  §§push(!§§pop());
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     param1.stopImmediatePropagation();
                                                                     if(_loc2_)
                                                                     {
                                                                        addr00ef:
                                                                        this._lastClickEvent = param1;
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(this.confirmationContainer.numElements > 0)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 this.confirmationContainer.removeAllElements();
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    addr0120:
                                                                                    §§push(this._confirmLayer);
                                                                                    if(_loc2_ || Boolean(param1))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(this._confirmLayer);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§push(ConfirmationInfoLayer.EVENT_ABORT_CLICKED);
                                                                                                if(_loc2_ || _loc3_)
                                                                                                {
                                                                                                   §§pop().removeEventListener(§§pop(),this.handleConfirmationAbort);
                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(this._confirmLayer);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push(ConfirmationInfoLayer.EVENT_CONFIRM_CLICKED);
                                                                                                         if(!(_loc3_ && Boolean(this)))
                                                                                                         {
                                                                                                            §§pop().removeEventListener(§§pop(),this.handleConfirmationClicked);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               addr01a7:
                                                                                                               this._confirmLayer = new ConfirmationInfoLayer();
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(this._confirmLayer);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr01c0:
                                                                                                                     §§push(FlexEvent.UPDATE_COMPLETE);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§pop().addEventListener(§§pop(),this.handleConfirmLayerReady);
                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(this._confirmLayer);
                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(ConfirmationInfoLayer.EVENT_ABORT_CLICKED);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 addr01fb:
                                                                                                                                 §§pop().addEventListener(§§pop(),this.handleConfirmationAbort);
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr0207:
                                                                                                                                    §§push(this._confirmLayer);
                                                                                                                                    if(!(_loc3_ && Boolean(param1)))
                                                                                                                                    {
                                                                                                                                       addr021e:
                                                                                                                                       §§pop().addEventListener(ConfirmationInfoLayer.EVENT_CONFIRM_CLICKED,this.handleConfirmationClicked);
                                                                                                                                       if(!(_loc3_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          addr0232:
                                                                                                                                          §§push(this._confirmLayer);
                                                                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             addr0243:
                                                                                                                                             §§pop().verificationAmount = this._priceToConfirm;
                                                                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                addr0258:
                                                                                                                                                if(this.height > this._confirmLayer.minHeight)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr0273:
                                                                                                                                                      §§push(this._confirmLayer);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr027c:
                                                                                                                                                         §§pop().minHeight = this.height;
                                                                                                                                                         if(_loc2_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr028f:
                                                                                                                                                            if(this.width > this._confirmLayer.minWidth)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_ || Boolean(param1))
                                                                                                                                                               {
                                                                                                                                                                  addr02aa:
                                                                                                                                                                  §§push(this._confirmLayer);
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr02b3:
                                                                                                                                                                     §§pop().minWidth = this.width;
                                                                                                                                                                     if(_loc2_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr02ca:
                                                                                                                                                                        this._confirmLayer.visible = false;
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr02de:
                                                                                                                                                                           this.confirmationContainer.addElement(this._confirmLayer);
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr02ff:
                                                                                                                                                                              this._justConfirmed = false;
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0309:
                                                                                                                                                                                 this._lastClickEvent = null;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr030e:
                                                                                                                                                                        return;
                                                                                                                                                                        addr02c6:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr02de);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr02ca);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0309);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr02c6);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr030e);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02ca);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr030e);
                                                                                                                                                }
                                                                                                                                                §§goto(addr028f);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02ff);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02b3);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0258);
                                                                                                                                    }
                                                                                                                                    §§goto(addr027c);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0273);
                                                                                                                              }
                                                                                                                              §§goto(addr021e);
                                                                                                                           }
                                                                                                                           §§goto(addr02b3);
                                                                                                                        }
                                                                                                                        §§goto(addr02ff);
                                                                                                                     }
                                                                                                                     §§goto(addr021e);
                                                                                                                  }
                                                                                                                  §§goto(addr0243);
                                                                                                               }
                                                                                                               §§goto(addr0207);
                                                                                                            }
                                                                                                            §§goto(addr02c6);
                                                                                                         }
                                                                                                         §§goto(addr01fb);
                                                                                                      }
                                                                                                      §§goto(addr01c0);
                                                                                                   }
                                                                                                   §§goto(addr030e);
                                                                                                }
                                                                                                §§goto(addr01fb);
                                                                                             }
                                                                                             §§goto(addr02b3);
                                                                                          }
                                                                                          §§goto(addr0232);
                                                                                       }
                                                                                       §§goto(addr01a7);
                                                                                    }
                                                                                    §§goto(addr0243);
                                                                                 }
                                                                                 §§goto(addr030e);
                                                                              }
                                                                              §§goto(addr0258);
                                                                           }
                                                                           §§goto(addr0120);
                                                                        }
                                                                        §§goto(addr0258);
                                                                     }
                                                                     §§goto(addr0273);
                                                                  }
                                                                  §§goto(addr02aa);
                                                               }
                                                               else
                                                               {
                                                                  super.clickHandler(param1);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr02ff);
                                                                  }
                                                               }
                                                               §§goto(addr0309);
                                                            }
                                                            §§goto(addr0207);
                                                         }
                                                      }
                                                      §§goto(addr00d4);
                                                   }
                                                   §§goto(addr00b4);
                                                }
                                                §§goto(addr00d3);
                                             }
                                             §§goto(addr00c2);
                                          }
                                          §§goto(addr00d3);
                                       }
                                       §§goto(addr00aa);
                                    }
                                    §§goto(addr00ab);
                                 }
                                 §§goto(addr00d4);
                              }
                              §§goto(addr006b);
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr00d3);
                     }
                     §§goto(addr006b);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr00b4);
            }
            §§goto(addr0046);
         }
         §§goto(addr0054);
      }
      
      private function handleConfirmationClicked(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            param1.stopImmediatePropagation();
            if(_loc3_ || _loc3_)
            {
               this.cleanUpConfirmationLayer();
               if(!_loc2_)
               {
                  this._justConfirmed = true;
                  if(!_loc2_)
                  {
                     if(this._lastClickEvent)
                     {
                        if(_loc3_)
                        {
                           addr006a:
                           dispatchEvent(this._lastClickEvent);
                        }
                     }
                  }
                  §§goto(addr0073);
               }
            }
            §§goto(addr006a);
         }
         addr0073:
      }
      
      private function handleConfirmationAbort(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            param1.stopImmediatePropagation();
            if(_loc3_ || Boolean(param1))
            {
               addr003f:
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               if(_loc3_)
               {
                  this.cleanUpConfirmationLayer();
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      private function cleanUpConfirmationLayer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._confirmLayer);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0027:
                     §§push(this._confirmLayer);
                     if(_loc1_ || _loc2_)
                     {
                        addr0042:
                        §§push(ConfirmationInfoLayer.EVENT_ABORT_CLICKED);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().removeEventListener(§§pop(),this.handleConfirmationAbort);
                           if(!_loc2_)
                           {
                              addr0075:
                              this._confirmLayer.removeEventListener(ConfirmationInfoLayer.EVENT_CONFIRM_CLICKED,this.handleConfirmationClicked);
                              addr006f:
                              if(_loc1_ || Boolean(this))
                              {
                                 addr0089:
                                 if(this._confirmationContainer)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr0096:
                                       this._confirmationContainer.removeAllElements();
                                    }
                                 }
                                 §§goto(addr009e);
                              }
                              §§goto(addr0096);
                           }
                           addr009e:
                           return;
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr006f);
                  }
               }
               §§goto(addr0089);
            }
            §§goto(addr0042);
         }
         §§goto(addr0027);
      }
      
      private function handleConfirmLayerReady(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this._confirmLayer.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleConfirmLayerReady);
         }
         var _loc2_:Point = new Point(this.width / 2,this.height / 2);
         _loc2_ = this.localToGlobal(_loc2_);
         _loc2_ = this.confirmationContainer.globalToLocal(_loc2_);
         if(_loc3_)
         {
            §§push(this._confirmLayer);
            if(_loc3_ || Boolean(this))
            {
               §§push(_loc2_.x - this._confirmLayer.width / 2);
               if(_loc3_ || Boolean(this))
               {
                  §§pop().x = §§pop();
                  if(_loc3_)
                  {
                     §§push(this._confirmLayer);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§goto(addr00c1);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr00d1);
               }
               addr00c1:
               §§pop().y = _loc2_.y - this._confirmLayer.height / 2;
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr00d5:
                  this._confirmLayer.visible = true;
                  addr00d1:
               }
               §§goto(addr00d8);
            }
            §§goto(addr00d5);
         }
         addr00d8:
      }
      
      private function get confirmationContainer() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ApplicationMediator = null;
         if(!_loc2_)
         {
            if(!this._confirmationContainer)
            {
               addr0032:
               _loc1_ = Facade.getInstance().retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
               if(!(_loc2_ && _loc2_))
               {
                  this._confirmationContainer = _loc1_.component.mainView.confirmationGroup;
               }
            }
            return this._confirmationContainer;
         }
         §§goto(addr0032);
      }
      
      private function handleRemoved(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.cleanUpConfirmationLayer();
         }
      }
      
      public function set useConfirmation(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._useConfirmation = param1;
            if(_loc2_ || _loc2_)
            {
               addr0036:
               if(param1)
               {
                  if(_loc2_ || param1)
                  {
                     addEventListener(Event.REMOVED_FROM_STAGE,this.handleRemoved);
                  }
               }
            }
            return;
         }
         §§goto(addr0036);
      }
      
      public function get useConfirmation() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._useConfirmation);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0042:
                     §§push(OptionsGlobalVariables.getInstance().showRCVerification);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0059:
                     §§push(false);
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0059);
            }
            addr005a:
            return §§pop();
         }
         §§goto(addr0042);
      }
      
      public function set priceToConfirm(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(RandomUtilities.isUnEqual(param1,this._priceToConfirm))
            {
               if(!_loc2_)
               {
                  this._priceToConfirm = param1;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     addr004b:
                     this.cleanUpConfirmationLayer();
                  }
                  §§goto(addr0050);
               }
               §§goto(addr004b);
            }
            addr0050:
            return;
         }
         §§goto(addr004b);
      }
      
      public function get showPlus() : Boolean
      {
         return this._showPlus;
      }
      
      public function set showPlus(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._showPlus = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               addr002b:
               §§push(this.plusIcon);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr0051:
                        §§push(this.plusIcon);
                        if(_loc2_ || param1)
                        {
                           §§push(param1);
                           if(_loc2_)
                           {
                              §§pop().visible = §§pop();
                              if(!_loc3_)
                              {
                                 addr0080:
                                 this.plusIcon.includeInLayout = param1;
                                 addr007f:
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr008f:
                                    invalidateProperties();
                                 }
                              }
                              return;
                           }
                           §§goto(addr0080);
                        }
                        §§goto(addr007f);
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr007f);
            }
            §§goto(addr0051);
         }
         §§goto(addr002b);
      }
   }
}

