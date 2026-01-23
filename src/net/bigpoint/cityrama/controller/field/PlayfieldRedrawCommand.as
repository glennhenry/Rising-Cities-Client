package net.bigpoint.cityrama.controller.field
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BoulderVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldRedrawCommand extends SimpleCommand
   {
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _boulderCache:Vector.<BoulderVo>;
      
      private var _buildingCache:Vector.<BuildingDTO>;
      
      private var _groundCache:Vector.<GroundDTO>;
      
      private var _decoCache:Vector.<DecorationVo>;
      
      private var _serverComProxy:ServerCommunicationProxy;
      
      private var _iterationSize:Number;
      
      public function PlayfieldRedrawCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this._boulderCache = new Vector.<BoulderVo>(0);
            if(_loc1_)
            {
               this._buildingCache = new Vector.<BuildingDTO>(0);
               if(!(_loc2_ && _loc2_))
               {
                  this._groundCache = new Vector.<GroundDTO>(0);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0089);
                  }
                  §§goto(addr00a1);
               }
            }
            addr0089:
            this._decoCache = new Vector.<DecorationVo>(0);
            if(!_loc2_)
            {
               addr00a1:
               super();
            }
            §§goto(addr00a4);
         }
         addr00a4:
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:BuildingDTO = null;
         var _loc3_:GroundDTO = null;
         var _loc4_:DecorationVo = null;
         var _loc5_:BoulderVo = null;
         if(_loc8_ || Boolean(this))
         {
            this._serverComProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
            if(_loc8_)
            {
               this._serverComProxy.startServerSpool();
               if(_loc8_)
               {
                  addr005e:
                  this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
                  if(!(_loc9_ && Boolean(_loc2_)))
                  {
                     addr0081:
                     this._timerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
                     if(_loc8_)
                     {
                        addr009c:
                        if(!facade.hasProxy(PathWalkProxy.NAME))
                        {
                           if(!(_loc9_ && Boolean(this)))
                           {
                              addr00b9:
                              facade.registerProxy(new PathWalkProxy());
                           }
                        }
                        var _loc6_:* = 0;
                        var _loc7_:* = this._playfieldProxy.playfieldDTO.buildings;
                        loop0:
                        while(true)
                        {
                           §§push(§§hasnext(_loc7_,_loc6_));
                           if(!(_loc8_ || Boolean(_loc2_)))
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              _loc2_ = §§nextvalue(_loc6_,_loc7_);
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 this._buildingCache.push(_loc2_);
                              }
                              continue;
                           }
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              if(!_loc9_)
                              {
                                 if(_loc8_)
                                 {
                                    §§push(0);
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc8_)
                                       {
                                          §§push(this._playfieldProxy);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop().playfieldDTO);
                                             if(_loc8_)
                                             {
                                                _loc7_ = §§pop().grounds;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc7_,_loc6_));
                                                   if(!(_loc9_ && Boolean(this)))
                                                   {
                                                      break loop0;
                                                   }
                                                   addr027f:
                                                   §§goto(addr0285);
                                                }
                                                addr018a:
                                             }
                                             addr01e8:
                                             _loc7_ = §§pop().decorations;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc7_,_loc6_));
                                                if(!(_loc8_ || Boolean(_loc2_)))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   _loc4_ = §§nextvalue(_loc6_,_loc7_);
                                                   if(_loc8_ || Boolean(param1))
                                                   {
                                                      this._decoCache.push(_loc4_);
                                                   }
                                                   continue;
                                                }
                                                if(_loc8_)
                                                {
                                                   addr022f:
                                                   if(_loc8_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         addr0241:
                                                         _loc6_ = 0;
                                                         if(_loc8_ || Boolean(_loc3_))
                                                         {
                                                            addr0258:
                                                            _loc7_ = this._playfieldProxy.playfieldDTO.boulders;
                                                            addr0255:
                                                            addr0251:
                                                            §§goto(addr027c);
                                                         }
                                                         §§goto(addr0285);
                                                      }
                                                      §§goto(addr028d);
                                                   }
                                                }
                                                §§goto(addr0285);
                                             }
                                             §§goto(addr027f);
                                          }
                                          addr01df:
                                          §§push(§§pop().playfieldDTO);
                                          if(_loc8_)
                                          {
                                             §§goto(addr01e8);
                                          }
                                          §§goto(addr0258);
                                       }
                                       addr01d5:
                                       §§push(this._playfieldProxy);
                                       if(!_loc9_)
                                       {
                                          §§goto(addr01df);
                                       }
                                       §§goto(addr0255);
                                    }
                                    §§goto(addr0241);
                                 }
                                 addr01c5:
                                 §§push(0);
                                 if(!_loc9_)
                                 {
                                    _loc6_ = §§pop();
                                    if(_loc8_)
                                    {
                                       §§goto(addr01d5);
                                    }
                                    addr0285:
                                    while(§§pop())
                                    {
                                       _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                       if(_loc8_)
                                       {
                                          this._boulderCache.push(_loc5_);
                                       }
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc7_,_loc6_));
                                          break;
                                       }
                                    }
                                    addr0285:
                                    if(_loc8_)
                                    {
                                       this._iterationSize = Math.max(1,(this._boulderCache.length * 5 + this._decoCache.length + this._groundCache.length + this._buildingCache.length) / 50);
                                       addr028d:
                                       if(_loc8_)
                                       {
                                          this.generateItems();
                                          if(!_loc9_)
                                          {
                                             sendNotification(ApplicationNotificationConstants.CREATE_CLIENT_FIELD_OBJECTS);
                                             if(!_loc9_)
                                             {
                                                addr02e9:
                                                sendNotification(ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED);
                                             }
                                          }
                                          §§goto(addr02f3);
                                       }
                                       §§goto(addr02e9);
                                    }
                                    §§goto(addr02f3);
                                 }
                                 §§goto(addr0241);
                              }
                              §§goto(addr0251);
                           }
                           §§goto(addr022f);
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc9_ && Boolean(_loc2_)))
                              {
                                 if(_loc8_ || Boolean(_loc2_))
                                 {
                                    if(!_loc9_)
                                    {
                                       §§goto(addr01c5);
                                    }
                                    addr02f3:
                                    return;
                                 }
                              }
                              §§goto(addr0285);
                           }
                           else
                           {
                              _loc3_ = §§nextvalue(_loc6_,_loc7_);
                              if(!_loc9_)
                              {
                                 this._groundCache.push(_loc3_);
                              }
                              §§goto(addr018a);
                           }
                        }
                        §§goto(addr027f);
                     }
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr009c);
            }
            §§goto(addr0081);
         }
         §§goto(addr005e);
      }
      
      private function generateItems() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this._iterationSize)
            {
               if(_loc2_)
               {
                  break;
               }
               addr01de:
               §§push(Boolean(this._buildingCache.length));
            }
            else
            {
               _loc1_++;
               if(!_loc3_)
               {
                  if(this._buildingCache.length)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_++;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§push(this._playfieldProxy);
                           if(_loc2_ || _loc3_)
                           {
                              §§pop().generateBuildings(this._buildingCache.pop());
                              if(_loc2_)
                              {
                                 addr0069:
                                 if(this._groundCache.length)
                                 {
                                    if(_loc2_)
                                    {
                                       _loc1_++;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr0087:
                                          §§push(this._playfieldProxy);
                                          if(!(_loc3_ && Boolean(_loc1_)))
                                          {
                                             §§pop().generateGrounds(this._groundCache.pop());
                                             if(_loc2_ || Boolean(_loc1_))
                                             {
                                                addr00b1:
                                                if(this._decoCache.length)
                                                {
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      _loc1_++;
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         §§push(this._playfieldProxy);
                                                         if(!_loc3_)
                                                         {
                                                            addr00e0:
                                                            §§pop().generateDecorations(this._decoCache.pop());
                                                            if(_loc2_)
                                                            {
                                                               addr00f2:
                                                               if(!this._boulderCache.length)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc2_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               _loc1_++;
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  addr0129:
                                                                  this._playfieldProxy.generateBoulders(this._boulderCache.pop());
                                                                  addr0125:
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr01b2);
                                                            }
                                                            §§goto(addr0125);
                                                         }
                                                         §§goto(addr0129);
                                                      }
                                                      addr0181:
                                                      §§push(Boolean(this._boulderCache.length));
                                                      if(!_loc3_)
                                                      {
                                                         addr018d:
                                                         var _temp_15:* = §§pop();
                                                         §§push(_temp_15);
                                                         §§push(_temp_15);
                                                         if(_loc2_ || Boolean(_loc1_))
                                                         {
                                                            addr019b:
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§pop();
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr01b2:
                                                                     §§push(Boolean(this._groundCache.length));
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        addr01c6:
                                                                        var _temp_12:* = §§pop();
                                                                        addr01c7:
                                                                        §§push(_temp_12);
                                                                        if(!_temp_12)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc2_ || Boolean(_loc1_))
                                                                              {
                                                                                 §§goto(addr01de);
                                                                              }
                                                                              §§goto(addr0202);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr01f1:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc2_ || Boolean(_loc1_))
                                                                        {
                                                                           addr0202:
                                                                           TweenMax.delayedCall(1 / 24,this.generateItems);
                                                                           if(_loc2_)
                                                                           {
                                                                           }
                                                                           §§goto(addr0221);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        this.finishRedraw();
                                                                     }
                                                                  }
                                                                  §§goto(addr0221);
                                                               }
                                                            }
                                                            §§goto(addr01c6);
                                                         }
                                                         §§goto(addr01c7);
                                                      }
                                                      §§goto(addr01f1);
                                                   }
                                                }
                                                §§goto(addr00f2);
                                             }
                                             §§goto(addr0221);
                                          }
                                          §§goto(addr00e0);
                                       }
                                       addr0221:
                                    }
                                    continue;
                                    return;
                                 }
                                 §§goto(addr00b1);
                              }
                              §§goto(addr0125);
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr01de);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0069);
               }
               §§goto(addr0125);
            }
            §§goto(addr01f1);
         }
         §§push(Boolean(this._decoCache.length));
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            var _temp_19:* = §§pop();
            §§push(_temp_19);
            §§push(_temp_19);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr0181);
                     }
                     §§goto(addr01de);
                  }
                  §§goto(addr01c6);
               }
               §§goto(addr018d);
            }
            §§goto(addr019b);
         }
         §§goto(addr018d);
      }
      
      private function finishRedraw() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._serverComProxy.stopServerSpool();
         }
         var _loc1_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         if(!_loc3_)
         {
            this._playfieldProxy.updateShops();
            if(_loc2_)
            {
               sendNotification(ApplicationNotificationConstants.FIELD_GENERATED);
               if(!(_loc3_ && _loc2_))
               {
                  this._timerProxy.stopRenderTimer = false;
                  if(!_loc3_)
                  {
                     sendNotification(ApplicationNotificationConstants.RESUME_ALL_WALKERS);
                     §§goto(addr0067);
                  }
               }
               §§goto(addr009c);
            }
            addr0067:
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.recheckClickTasks();
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr009c:
                  sendNotification(ApplicationNotificationConstants.HORIZON_REDRAW,this._playfieldProxy.config.gfxId);
                  if(!(_loc3_ && _loc2_))
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_CENTER_ON_POINT,HorizionSettingsVo.centerPoint(this._playfieldProxy.config.gfxId));
                     addr00bd:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00f0:
                        TweenMax.delayedCall(2,sendNotification,[ApplicationNotificationConstants.STOP_PLAYFIELD_LOADING_ANIMATION]);
                     }
                     §§goto(addr0102);
                  }
                  §§goto(addr00f0);
               }
            }
            addr0102:
            return;
         }
         §§goto(addr00bd);
      }
   }
}

