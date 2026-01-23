package net.bigpoint.cityrama.view.newsscreen
{
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import mx.events.ItemClickEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedLayerTabProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsScreenSlideVo;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsscreenPopupVo;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class NewsScreenMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "NewsScreenMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || NewsScreenMediator)
      {
         NAME = "NewsScreenMediator";
      }
      
      private const WILDCARD_UID:String = "{ID}";
      
      private const WILDCARD_ULEVEL:String = "{LVL}";
      
      private const WILDCARD_PAYUSER:String = "{PAY}";
      
      private var _soundProxy:SoundProxy;
      
      private var _playfieldObjectProxy:PlayfieldObjectsProxy;
      
      private var _openedOnStartup:Boolean = false;
      
      private var _data:NewsscreenPopupVo;
      
      public function NewsScreenMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(param1 is NewsscreenPopupVo)
            {
               if(!_loc2_)
               {
                  this._data = param1 as NewsscreenPopupVo;
                  if(_loc3_)
                  {
                     addr0048:
                     this.component.setData(this._data);
                  }
               }
            }
            return;
         }
         §§goto(addr0048);
      }
      
      private function get component() : NewsScreenPopup
      {
         return this.viewComponent as NewsScreenPopup;
      }
      
      private function finalCall(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
            if(!_loc2_)
            {
               facade.sendNotification(ApplicationNotificationConstants.OPEN_UPSELL_OFFER_LAYER);
            }
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._soundProxy = SoundProxy(facade.retrieveProxy(SoundProxy.NAME));
            if(_loc1_ || _loc1_)
            {
               §§push(this.component);
               if(_loc1_)
               {
                  §§pop().addEventListener(Event.CLOSE,this.finalCall);
                  if(_loc1_)
                  {
                     addr005c:
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        addr0065:
                        §§push(NewsScreenPopup.SHOW_FORUM);
                        if(_loc1_ || _loc1_)
                        {
                           §§pop().addEventListener(§§pop(),this.onHandleForum);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr00a1:
                              this.component.addEventListener(NewsScreenPopup.OPEN_LINK,this.onOpenLink);
                              addr009b:
                              addr0097:
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr009b);
                  }
                  addr00a9:
                  return;
               }
               §§goto(addr0065);
            }
            §§goto(addr005c);
         }
         §§goto(addr0097);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.component.removeEventListener(Event.CLOSE,this.finalCall);
            if(!_loc2_)
            {
               §§goto(addr0046);
            }
            §§goto(addr0066);
         }
         addr0046:
         super.onRemove();
         if(!_loc2_)
         {
            if(this._openedOnStartup)
            {
               if(_loc1_ || Boolean(this))
               {
                  addr0066:
                  sendNotification(ApplicationNotificationConstants.CHECK_PLAYER_PAYMENTPACKS);
               }
            }
         }
      }
      
      private function onHandleForum(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_EXTERNAL_FORUM);
         }
      }
      
      private function onOpenLink(param1:ItemClickEvent) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:FeaturedEventProxy = null;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc2_:int = int(param1.index);
         if(!(_loc11_ && Boolean(_loc3_)))
         {
            §§push(this._data);
            if(!(_loc11_ && Boolean(param1)))
            {
               §§push(§§pop());
               if(_loc12_ || Boolean(this))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  §§push(_temp_5);
                  if(_loc12_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        if(_loc12_ || Boolean(_loc2_))
                        {
                           §§pop();
                           if(!(_loc11_ && Boolean(param1)))
                           {
                              §§push(this._data);
                              if(!_loc11_)
                              {
                                 §§push(§§pop().slides.length > _loc2_);
                                 if(!(_loc11_ && Boolean(param1)))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc11_ && Boolean(_loc2_)))
                                    {
                                       addr00ca:
                                       var _temp_11:* = §§pop();
                                       addr00cb:
                                       §§push(_temp_11);
                                       if(_temp_11)
                                       {
                                          if(_loc12_ || Boolean(param1))
                                          {
                                             §§pop();
                                             if(_loc12_ || Boolean(param1))
                                             {
                                                addr00ec:
                                                §§push(this._data);
                                                if(_loc12_)
                                                {
                                                   §§goto(addr0106);
                                                }
                                                §§goto(addr014d);
                                             }
                                             §§goto(addr0419);
                                          }
                                       }
                                    }
                                    addr0106:
                                    §§goto(addr00f6);
                                 }
                                 §§goto(addr0105);
                              }
                              §§goto(addr00f6);
                           }
                           §§goto(addr0118);
                        }
                        §§goto(addr0105);
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr0106);
            }
            addr00f6:
            §§push(§§pop().slides[_loc2_] == null);
            if(!_loc11_)
            {
               addr0105:
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc11_ && Boolean(_loc2_)))
               {
                  addr0118:
                  §§push(this._data);
                  if(_loc12_ || Boolean(_loc2_))
                  {
                     §§push(§§pop().slides[_loc2_].type);
                     if(!_loc11_)
                     {
                        _loc3_ = §§pop();
                        if(_loc12_ || Boolean(this))
                        {
                           addr0158:
                           _loc4_ = this._data.slides[_loc2_].linkValue;
                           addr014d:
                        }
                        §§goto(addr0419);
                     }
                     §§goto(addr0158);
                  }
                  §§goto(addr014d);
               }
               addr0419:
               §§push(_loc3_);
               loop0:
               while(true)
               {
                  var _loc10_:* = §§pop();
                  if(_loc12_ || Boolean(_loc2_))
                  {
                     §§push(NewsScreenSlideVo.EXTERNAL_PARAM);
                     if(!(_loc11_ && Boolean(param1)))
                     {
                        §§push(_loc10_);
                        if(!(_loc11_ && Boolean(param1)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc11_ && Boolean(_loc2_)))
                              {
                                 §§push(0);
                                 if(_loc11_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr049a:
                                 §§push(1);
                                 if(_loc12_ || Boolean(_loc2_))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(NewsScreenSlideVo.EXTERNAL);
                              if(_loc12_)
                              {
                                 §§push(_loc10_);
                                 if(!(_loc11_ && Boolean(this)))
                                 {
                                    addr0488:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc11_ && Boolean(this)))
                                       {
                                          §§goto(addr049a);
                                       }
                                       else
                                       {
                                          addr04cc:
                                          §§push(2);
                                          if(_loc11_ && Boolean(param1))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(NewsScreenSlideVo.EKOMI);
                                       if(!_loc11_)
                                       {
                                          §§push(_loc10_);
                                          if(_loc12_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§goto(addr04cc);
                                                }
                                                else
                                                {
                                                   addr0550:
                                                   §§push(4);
                                                   if(_loc12_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(NewsScreenSlideVo.PAYMENT);
                                                if(!(_loc11_ && Boolean(_loc2_)))
                                                {
                                                   addr04f4:
                                                   §§push(_loc10_);
                                                   if(!_loc11_)
                                                   {
                                                      addr04fc:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc12_ || Boolean(_loc3_))
                                                         {
                                                            §§push(3);
                                                            if(_loc11_ && Boolean(_loc2_))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0628:
                                                            §§push(8);
                                                            if(_loc12_ || Boolean(this))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(NewsScreenSlideVo.PLAYFIELD_ITEM);
                                                         if(_loc12_)
                                                         {
                                                            §§push(_loc10_);
                                                            if(_loc12_ || Boolean(_loc2_))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc12_ || Boolean(this))
                                                                  {
                                                                     §§goto(addr0550);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0655:
                                                                     §§push(9);
                                                                     if(_loc11_ && Boolean(_loc2_))
                                                                     {
                                                                     }
                                                                  }
                                                                  addr0675:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        §§push(this.replaceWildCards(_loc4_));
                                                                        if(!(_loc11_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc11_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(_loc12_)
                                                                              {
                                                                                 addr0184:
                                                                                 sendNotification(ApplicationNotificationConstants.OPEN_EXTERNAL_LINK,_loc4_);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 addr01b1:
                                                                                 sendNotification(ApplicationNotificationConstants.OPEN_ITEM_IN_ARCHITECT_BOOK,Number(_loc4_));
                                                                                 if(_loc12_ || Boolean(_loc3_))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                        addr01e7:
                                                                        _loc6_ = §§pop().split(";");
                                                                        _loc7_ = {};
                                                                        if(_loc11_)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        if(_loc6_.length > 0)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              break loop0;
                                                                           }
                                                                           _loc9_ = this.categoryStringToTabIndexAndCategoryIndex(_loc6_[0] as String);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 _loc7_.index = _loc9_.index;
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    _loc7_.cat = _loc9_.cat;
                                                                                    if(_loc12_ || Boolean(_loc3_))
                                                                                    {
                                                                                       addr0256:
                                                                                       if(_loc6_.length > 1)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr0266:
                                                                                             _loc7_.pack = int(_loc6_[1]);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr0278:
                                                                                    sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY,_loc7_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    addr02a7:
                                                                                    sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"goodConfigId":_loc8_});
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr0266);
                                                                              }
                                                                              §§goto(addr0256);
                                                                           }
                                                                        }
                                                                        §§goto(addr0278);
                                                                     case 1:
                                                                     case 2:
                                                                        §§goto(addr0184);
                                                                     case 4:
                                                                        §§goto(addr01b1);
                                                                     case 3:
                                                                        throw new IllegalOperationError(this + " not yet implemented");
                                                                     case 5:
                                                                        §§push(_loc4_);
                                                                        if(_loc12_ || Boolean(this))
                                                                        {
                                                                           §§goto(addr01e7);
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     case 6:
                                                                        _loc8_ = Number(_loc4_);
                                                                        if(!(_loc12_ || Boolean(this)))
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        §§goto(addr02a7);
                                                                        break;
                                                                     case 7:
                                                                        §§push(this._playfieldObjectProxy);
                                                                        if(!(_loc11_ && Boolean(this)))
                                                                        {
                                                                           if(§§pop() == null)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              this._playfieldObjectProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                                                                              if(!_loc12_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                           }
                                                                           §§push(this._playfieldObjectProxy);
                                                                        }
                                                                        if(§§pop().getCitySquare() != null)
                                                                        {
                                                                           if(_loc12_ || Boolean(this))
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        break loop0;
                                                                     case 8:
                                                                        _loc5_ = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
                                                                        §§push(Boolean(_loc5_));
                                                                        if(_loc12_ || Boolean(param1))
                                                                        {
                                                                           var _temp_45:* = §§pop();
                                                                           §§push(_temp_45);
                                                                           if(_temp_45)
                                                                           {
                                                                              if(!(_loc11_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§pop();
                                                                                 if(!(_loc11_ && Boolean(this)))
                                                                                 {
                                                                                    addr0386:
                                                                                    §§push(_loc5_.cityWheelRunning);
                                                                                    if(!(_loc11_ && Boolean(param1)))
                                                                                    {
                                                                                       addr0385:
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    if(!(_loc12_ || Boolean(_loc2_)))
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                 }
                                                                                 sendNotification(ApplicationNotificationConstants.OPEN_FEATURED_LAYER,FeaturedLayerTabProxy.CITYWHEEL_TAB_INDEX);
                                                                                 break loop0;
                                                                              }
                                                                              §§goto(addr0385);
                                                                           }
                                                                        }
                                                                        §§goto(addr0386);
                                                                     case 9:
                                                                        _loc5_ = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
                                                                        §§push(Boolean(_loc5_));
                                                                        if(!_loc11_)
                                                                        {
                                                                           var _temp_51:* = §§pop();
                                                                           §§push(_temp_51);
                                                                           if(_temp_51)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr03ee:
                                                                                    §§push(_loc5_.mysteryBuildingRunning);
                                                                                    if(_loc12_ || Boolean(_loc2_))
                                                                                    {
                                                                                       addr03ed:
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc11_ && Boolean(this)))
                                                                                       {
                                                                                          sendNotification(ApplicationNotificationConstants.OPEN_FEATURED_LAYER,FeaturedLayerTabProxy.MYSTERY_TAB_INDEX);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break loop0;
                                                                              }
                                                                              §§goto(addr03ed);
                                                                           }
                                                                        }
                                                                        §§goto(addr03ee);
                                                                     default:
                                                                        break loop0;
                                                                  }
                                                                  sendNotification(ApplicationNotificationConstants.CITYSQUARE_CLICKED);
                                                                  break;
                                                               }
                                                               §§push(NewsScreenSlideVo.CITY_TREASURY);
                                                               if(_loc12_ || Boolean(this))
                                                               {
                                                                  addr0570:
                                                                  §§push(_loc10_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(5);
                                                                           if(_loc12_ || Boolean(param1))
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr0628);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(NewsScreenSlideVo.GOOD);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(_loc12_)
                                                                           {
                                                                              addr05aa:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(6);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0655);
                                                                                 }
                                                                                 §§goto(addr0675);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(NewsScreenSlideVo.EVENT_SQUARE);
                                                                                 if(_loc12_ || Boolean(_loc2_))
                                                                                 {
                                                                                    addr05d4:
                                                                                    §§push(_loc10_);
                                                                                    if(_loc12_ || Boolean(param1))
                                                                                    {
                                                                                       addr05e4:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(!(_loc11_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(7);
                                                                                             if(_loc11_ && Boolean(param1))
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr0655);
                                                                                          }
                                                                                          §§goto(addr0675);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(NewsScreenSlideVo.CITY_WHEEL);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             addr0616:
                                                                                             §§push(_loc10_);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr061e:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      §§goto(addr0628);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr0655);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0651:
                                                                                                   addr064f:
                                                                                                   if(NewsScreenSlideVo.MYSTERY_BUILDING === _loc10_)
                                                                                                   {
                                                                                                      §§goto(addr0655);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(10);
                                                                                                   }
                                                                                                   §§goto(addr0675);
                                                                                                }
                                                                                                §§goto(addr0655);
                                                                                             }
                                                                                             §§goto(addr0651);
                                                                                          }
                                                                                          §§goto(addr064f);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr061e);
                                                                                 }
                                                                                 §§goto(addr064f);
                                                                              }
                                                                           }
                                                                           §§goto(addr0651);
                                                                        }
                                                                        §§goto(addr05d4);
                                                                     }
                                                                     §§goto(addr0675);
                                                                  }
                                                                  §§goto(addr05e4);
                                                               }
                                                               §§goto(addr064f);
                                                               §§goto(addr0655);
                                                            }
                                                            §§goto(addr05aa);
                                                         }
                                                         §§goto(addr05d4);
                                                      }
                                                      §§goto(addr0675);
                                                   }
                                                   §§goto(addr061e);
                                                }
                                                §§goto(addr0616);
                                             }
                                             §§goto(addr0675);
                                          }
                                          §§goto(addr061e);
                                       }
                                       §§goto(addr0570);
                                    }
                                    §§goto(addr0675);
                                 }
                                 §§goto(addr04fc);
                              }
                              §§goto(addr0616);
                           }
                           §§goto(addr0675);
                        }
                        §§goto(addr0488);
                     }
                     §§goto(addr04f4);
                  }
                  §§goto(addr0655);
               }
               §§goto(addr06a3);
            }
            addr06a3:
            this.finalCall();
            return;
         }
         §§goto(addr00ec);
      }
      
      private function categoryStringToTabIndexAndCategoryIndex(param1:String) : Object
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc2_:Object = {};
         if(_loc5_ || Boolean(this))
         {
            _loc3_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               break;
            }
            if(§§pop() >= CityTreasuryProxy.resourceCategories.length)
            {
               if(_loc5_)
               {
                  §§push(0);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     _loc3_ = §§pop();
                     if(_loc5_)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ || Boolean(this)))
                           {
                              break;
                           }
                           if(§§pop() >= CityTreasuryProxy.goodCategories.length)
                           {
                              if(_loc5_)
                              {
                                 addr0147:
                                 §§push(0);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc4_)
                                       {
                                          break loop0;
                                       }
                                       break;
                                    }
                                    loop1:
                                    while(§§pop() < CityTreasuryProxy.specialCategories.length)
                                    {
                                       if(CityTreasuryProxy.specialCategories[_loc3_].indexOf(param1) != -1)
                                       {
                                          if(_loc5_)
                                          {
                                             while(true)
                                             {
                                                _loc2_.index = CityTreasuryTabProxy.SPECIALS_TAB_INDEX;
                                                if(!_loc4_)
                                                {
                                                   do
                                                   {
                                                      _loc2_.cat = _loc3_;
                                                   }
                                                   while(!(_loc5_ || Boolean(_loc2_)));
                                                   
                                                   addr0233:
                                                   return _loc2_;
                                                   addr0211:
                                                }
                                                addr0243:
                                                while(true)
                                                {
                                                   _loc3_++;
                                                   if(!(_loc5_ || Boolean(_loc2_)))
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      continue loop1;
                                                   }
                                                }
                                                break;
                                             }
                                             break;
                                             addr0201:
                                          }
                                          §§goto(addr0211);
                                       }
                                       §§goto(addr0243);
                                    }
                                    addr0260:
                                    return null;
                                    addr0254:
                                    addr01b9:
                                 }
                                 do
                                 {
                                    _loc3_++;
                                 }
                                 while(!(_loc4_ && Boolean(this)));
                                 
                                 §§push(0);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr0254);
                                 addr01a9:
                              }
                              §§goto(addr01b9);
                           }
                           else if(CityTreasuryProxy.goodCategories[_loc3_].indexOf(param1) != -1)
                           {
                              if(!_loc4_)
                              {
                                 _loc2_.index = CityTreasuryTabProxy.GOODS_TAB_INDEX;
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    _loc2_.cat = _loc3_;
                                    if(!_loc4_)
                                    {
                                       return _loc2_;
                                    }
                                    §§goto(addr01b9);
                                 }
                                 §§goto(addr01a9);
                              }
                              addr0186:
                              _loc2_.cat = _loc3_;
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 return _loc2_;
                              }
                              §§goto(addr0233);
                           }
                           else
                           {
                              _loc3_++;
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 continue;
                              }
                              §§goto(addr0147);
                           }
                           §§goto(addr0147);
                        }
                        _loc3_ = §§pop();
                        if(!_loc4_)
                        {
                           §§goto(addr0253);
                        }
                        §§goto(addr0201);
                        addr0126:
                     }
                     §§goto(addr0260);
                  }
                  §§goto(addr0254);
               }
               §§goto(addr0126);
            }
            else if(CityTreasuryProxy.resourceCategories[_loc3_].indexOf(param1) != -1)
            {
               if(_loc5_)
               {
                  _loc2_.index = CityTreasuryTabProxy.CURRENCY_TAB_INDEX;
                  if(_loc5_ || Boolean(this))
                  {
                     _loc2_.cat = _loc3_;
                     if(!_loc4_)
                     {
                        return _loc2_;
                     }
                     §§goto(addr0126);
                  }
                  §§goto(addr0186);
               }
               §§goto(addr0253);
            }
            else
            {
               _loc3_++;
               if(!(_loc4_ && Boolean(param1)))
               {
                  continue;
               }
            }
            §§goto(addr0260);
         }
         while(true)
         {
            if(§§pop() >= CityTreasuryProxy.starterPackCategories.length)
            {
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr0253);
            }
            else
            {
               if(CityTreasuryProxy.starterPackCategories[_loc3_].indexOf(param1) != -1)
               {
                  if(!_loc4_)
                  {
                     _loc2_.index = CityTreasuryTabProxy.PACKS_TAB_INDEX;
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§goto(addr0186);
                  }
               }
               else
               {
                  §§goto(addr01a9);
               }
               §§goto(addr0260);
            }
         }
         §§goto(addr01d2);
      }
      
      private function replaceWildCards(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(this.WILDCARD_UID);
               if(!_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) != -1)
                  {
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        §§push(param1);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(this.WILDCARD_UID);
                           if(_loc3_ || Boolean(this))
                           {
                              §§push((facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy).player);
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§push(§§pop().replace(§§pop(),§§pop().id.toString()));
                                 if(_loc3_)
                                 {
                                    param1 = §§pop();
                                    if(!_loc2_)
                                    {
                                       addr0093:
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                          addr0099:
                                          §§push(this.WILDCARD_ULEVEL);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00b7:
                                             if(§§pop().indexOf(§§pop()) != -1)
                                             {
                                                if(!_loc2_)
                                                {
                                                   addr00c6:
                                                   §§push(param1);
                                                   if(_loc3_ || Boolean(param1))
                                                   {
                                                      §§push(this.WILDCARD_ULEVEL);
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr00de);
                                                      }
                                                      §§goto(addr0123);
                                                   }
                                                   §§goto(addr00fd);
                                                }
                                                §§goto(addr013a);
                                             }
                                             §§goto(addr0103);
                                          }
                                          addr00de:
                                          §§push(§§pop().replace(§§pop(),(facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy).userLevel.toString()));
                                          if(!_loc2_)
                                          {
                                             addr00fd:
                                             param1 = §§pop();
                                             if(!_loc2_)
                                             {
                                                addr0103:
                                                §§push(param1);
                                                if(_loc3_ || Boolean(param1))
                                                {
                                                   §§push(this.WILDCARD_PAYUSER);
                                                   if(!(_loc2_ && Boolean(param1)))
                                                   {
                                                      addr0123:
                                                      if(§§pop().indexOf(§§pop()) != -1)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            addr013a:
                                                            §§push(param1);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§goto(addr0159);
                                                            }
                                                            §§goto(addr0180);
                                                         }
                                                      }
                                                      §§goto(addr0181);
                                                   }
                                                   addr0159:
                                                   §§goto(addr0154);
                                                }
                                                addr0154:
                                                §§goto(addr0182);
                                             }
                                             §§goto(addr0181);
                                          }
                                          addr0182:
                                          §§goto(addr016a);
                                       }
                                       §§goto(addr0180);
                                    }
                                    §§goto(addr00c6);
                                 }
                                 §§goto(addr0180);
                              }
                              addr016a:
                              §§push(§§pop().replace(this.WILDCARD_PAYUSER,(facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy).player.premiumPlayer));
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0180:
                                 param1 = §§pop();
                                 addr0181:
                                 return param1;
                              }
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0103);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr00de);
            }
            §§goto(addr0182);
         }
         §§goto(addr013a);
      }
   }
}

