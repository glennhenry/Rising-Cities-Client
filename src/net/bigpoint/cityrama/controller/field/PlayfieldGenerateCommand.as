package net.bigpoint.cityrama.controller.field
{
   import as3isolib.display.renderers.DefaultSceneLayoutRenderer;
   import as3isolib.display.scene.IsoScene;
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.init.preloader.PreloaderProgressSingleton;
   import net.bigpoint.cityrama.model.EventStreamProxy;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BoulderVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.model.urbies.CitizensProxy;
   import net.bigpoint.cityrama.view.field.FieldMediator;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import net.bigpoint.cityrama.view.field.ground.PlaneMediator;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldGenerateCommand extends SimpleCommand
   {
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _playfieldObjProxy:PlayfieldObjectsProxy;
      
      private var _eventStreamProxy:EventStreamProxy;
      
      private var _buildingList:Vector.<BuildingDTO>;
      
      private var _groundList:Vector.<GroundDTO>;
      
      private var _decorationList:Vector.<DecorationVo>;
      
      private var _boulderList:Vector.<BoulderVo>;
      
      private var _isoScene:IsoScene;
      
      private var _serverComProxy:ServerCommunicationProxy;
      
      private var _iterationSize:int;
      
      public function PlayfieldGenerateCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      private static function printPony() : void
      {
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc6_:BuildingDTO = null;
         var _loc7_:GroundDTO = null;
         var _loc8_:DecorationVo = null;
         var _loc9_:BoulderVo = null;
         if(!(_loc13_ && Boolean(param1)))
         {
            this._serverComProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
            if(_loc12_)
            {
               this._serverComProxy.startServerSpool();
               if(_loc12_)
               {
                  this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
                  if(!_loc13_)
                  {
                     addr007e:
                     this._playfieldObjProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
                     if(_loc12_)
                     {
                        this._timerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
                        if(!_loc13_)
                        {
                           addr00b1:
                           this._timerProxy.stopRenderTimer = true;
                           if(!(_loc13_ && _loc2_))
                           {
                              this._eventStreamProxy = EventStreamProxy(facade.retrieveProxy(EventStreamProxy.NAME));
                           }
                        }
                        addr00dd:
                        var _loc2_:PlaneProxy = PlaneProxy(facade.retrieveProxy(PlaneProxy.NAME));
                        if(_loc12_)
                        {
                           _loc2_.resetModel();
                           if(_loc12_ || _loc3_)
                           {
                              this._playfieldObjProxy.resetModel();
                              if(!(_loc13_ && _loc3_))
                              {
                                 PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_FIELD_BUILD_STARTED);
                                 if(!(_loc13_ && Boolean(this)))
                                 {
                                    this._isoScene = new IsoScene();
                                    if(!(_loc13_ && Boolean(param1)))
                                    {
                                       addr0159:
                                       §§push(this._isoScene);
                                       if(_loc12_ || Boolean(param1))
                                       {
                                          §§pop().container.visible = false;
                                          if(_loc12_ || Boolean(param1))
                                          {
                                             addr017f:
                                             §§push(this._isoScene);
                                             if(_loc12_ || _loc3_)
                                             {
                                                addr0191:
                                                §§pop().layoutRenderer = new DefaultSceneLayoutRenderer();
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   addr01ad:
                                                   this._isoScene.layoutEnabled = false;
                                                   addr01a9:
                                                }
                                                addr01b2:
                                                var _loc3_:PlaneMediator = new PlaneMediator(PlaneMediator.NAME,this._isoScene);
                                                if(!(_loc13_ && Boolean(_loc3_)))
                                                {
                                                   facade.registerMediator(_loc3_);
                                                }
                                                var _loc4_:FieldMediator = new FieldMediator(FieldMediator.NAME,this._isoScene);
                                                if(_loc12_)
                                                {
                                                   facade.registerMediator(_loc4_);
                                                }
                                                var _loc5_:SecurityGradeHeatMapMediator = new SecurityGradeHeatMapMediator(SecurityGradeHeatMapMediator.NAME,_loc4_.securityGradeHeatMapGroup);
                                                if(_loc12_)
                                                {
                                                   facade.registerMediator(_loc5_);
                                                   if(_loc12_ || Boolean(_loc2_))
                                                   {
                                                      this._buildingList = new Vector.<BuildingDTO>();
                                                      if(_loc12_ || Boolean(param1))
                                                      {
                                                         this._groundList = new Vector.<GroundDTO>();
                                                         if(_loc12_)
                                                         {
                                                            addr026e:
                                                            this._decorationList = new Vector.<DecorationVo>();
                                                            if(!_loc13_)
                                                            {
                                                               addr0282:
                                                               this._boulderList = new Vector.<BoulderVo>();
                                                            }
                                                         }
                                                         var _loc10_:* = 0;
                                                         var _loc11_:* = this._playfieldProxy.playfieldDTO.buildings;
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc11_,_loc10_));
                                                            if(_loc13_ && Boolean(_loc2_))
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc13_ && Boolean(param1)))
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(_loc12_ || Boolean(param1))
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc12_)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(this._playfieldProxy);
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§push(§§pop().playfieldDTO);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    _loc11_ = §§pop().grounds;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc11_,_loc10_));
                                                                                       if(!(_loc13_ && Boolean(param1)))
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       addr03d4:
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             _loc8_ = §§nextvalue(_loc10_,_loc11_);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                this._decorationList.push(_loc8_);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc11_,_loc10_));
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             break;
                                                                                             addr03cb:
                                                                                          }
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             addr03de:
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                §§goto(addr03e6);
                                                                                             }
                                                                                             §§goto(addr0400);
                                                                                          }
                                                                                          §§goto(addr043c);
                                                                                       }
                                                                                       while(§§pop())
                                                                                       {
                                                                                          _loc9_ = §§nextvalue(_loc10_,_loc11_);
                                                                                          if(_loc12_ || Boolean(param1))
                                                                                          {
                                                                                             this._boulderList.push(_loc9_);
                                                                                          }
                                                                                          §§push(§§hasnext(_loc11_,_loc10_));
                                                                                       }
                                                                                       §§goto(addr043a);
                                                                                    }
                                                                                    addr0349:
                                                                                 }
                                                                                 addr03a7:
                                                                                 _loc11_ = §§pop().decorations;
                                                                                 §§goto(addr03cb);
                                                                              }
                                                                              §§goto(addr0404);
                                                                           }
                                                                           addr038c:
                                                                           §§push(this._playfieldProxy);
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(§§pop().playfieldDTO);
                                                                              if(_loc12_ || Boolean(_loc2_))
                                                                              {
                                                                                 §§goto(addr03a7);
                                                                              }
                                                                              §§goto(addr0407);
                                                                           }
                                                                           §§goto(addr0404);
                                                                        }
                                                                        addr0384:
                                                                        _loc10_ = §§pop();
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§goto(addr038c);
                                                                        }
                                                                        §§goto(addr0400);
                                                                     }
                                                                     §§goto(addr04ad);
                                                                  }
                                                                  §§goto(addr038c);
                                                               }
                                                               if(_loc12_ || Boolean(this))
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§goto(addr0384);
                                                                     }
                                                                     §§goto(addr03f8);
                                                                  }
                                                                  §§goto(addr0486);
                                                               }
                                                               addr03e6:
                                                               if(!(_loc13_ && Boolean(param1)))
                                                               {
                                                                  addr03f8:
                                                                  _loc10_ = 0;
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr0407:
                                                                     _loc11_ = this._playfieldProxy.playfieldDTO.boulders;
                                                                     addr0400:
                                                                     addr0404:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc11_,_loc10_));
                                                                        break loop2;
                                                                     }
                                                                  }
                                                                  addr043c:
                                                                  if(_loc12_)
                                                                  {
                                                                     sendNotification(ApplicationNotificationConstants.START_PLAYFIELD_LOADING_ANIMATION,{
                                                                        "gfxId":this._playfieldProxy.playfieldDTO.config.gfxId,
                                                                        "initial":true
                                                                     });
                                                                     if(!(_loc13_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§goto(addr0473);
                                                                     }
                                                                     §§goto(addr04ad);
                                                                  }
                                                                  §§goto(addr04cf);
                                                               }
                                                               addr0473:
                                                            }
                                                            _loc6_ = §§nextvalue(_loc10_,_loc11_);
                                                            if(!_loc13_)
                                                            {
                                                               this._buildingList.push(_loc6_);
                                                            }
                                                            continue;
                                                            TweenMax.delayedCall(3,this.generateItems);
                                                            if(_loc12_)
                                                            {
                                                               addr0486:
                                                               sendNotification(ApplicationNotificationConstants.CREATE_CLIENT_FIELD_OBJECTS);
                                                               if(!(_loc13_ && Boolean(_loc3_)))
                                                               {
                                                                  addr04ad:
                                                                  sendNotification(ApplicationNotificationConstants.HORIZON_REDRAW,this._playfieldProxy.config.gfxId);
                                                                  if(!(_loc13_ && Boolean(_loc2_)))
                                                                  {
                                                                     addr04cf:
                                                                     this._iterationSize = 50;
                                                                  }
                                                                  §§goto(addr04d6);
                                                               }
                                                               §§goto(addr04cf);
                                                            }
                                                            addr04d6:
                                                            return;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  §§goto(addr0364);
                                                               }
                                                               §§goto(addr03de);
                                                            }
                                                            else
                                                            {
                                                               _loc7_ = §§nextvalue(_loc10_,_loc11_);
                                                               if(!(_loc13_ && Boolean(_loc2_)))
                                                               {
                                                                  this._groundList.push(_loc7_);
                                                               }
                                                               §§goto(addr0349);
                                                            }
                                                         }
                                                         §§goto(addr03d4);
                                                      }
                                                      §§goto(addr026e);
                                                   }
                                                }
                                                §§goto(addr0282);
                                             }
                                             §§goto(addr01ad);
                                          }
                                          §§goto(addr01a9);
                                       }
                                       §§goto(addr0191);
                                    }
                                    §§goto(addr01a9);
                                 }
                                 §§goto(addr01b2);
                              }
                              §§goto(addr01a9);
                           }
                           §§goto(addr0159);
                        }
                        §§goto(addr017f);
                     }
                     §§goto(addr00b1);
                  }
               }
               §§goto(addr00dd);
            }
            §§goto(addr007e);
         }
         §§goto(addr00b1);
      }
      
      private function generateItems() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this._iterationSize)
            {
               if(!_loc2_)
               {
                  break;
               }
            }
            else
            {
               _loc1_++;
               if(_loc2_)
               {
                  break;
               }
               if(this._buildingList.length)
               {
                  if(_loc3_)
                  {
                     _loc1_++;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(this._playfieldProxy);
                        if(_loc3_)
                        {
                           §§pop().generateBuildings(this._buildingList.pop());
                           if(!_loc2_)
                           {
                              addr005a:
                              if(this._groundList.length)
                              {
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 _loc1_++;
                                 if(_loc3_)
                                 {
                                    §§push(this._playfieldProxy);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§goto(addr0089);
                                    }
                                    §§goto(addr010a);
                                 }
                                 §§goto(addr026f);
                              }
                              §§goto(addr00a2);
                           }
                           §§goto(addr00c0);
                        }
                        addr0089:
                        §§pop().generateGrounds(this._groundList.pop());
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00a2:
                           if(this._decorationList.length)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 _loc1_++;
                                 if(_loc3_)
                                 {
                                    addr00c0:
                                    §§push(this._playfieldProxy);
                                    if(_loc3_)
                                    {
                                       §§pop().generateDecorations(this._decorationList.pop());
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       addr00e3:
                                       if(!this._boulderList.length)
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          _loc1_++;
                                          if(!_loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(this._playfieldProxy);
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr010a:
                                             §§pop().generateBoulders(this._boulderList.pop());
                                             if(!_loc2_)
                                             {
                                                addr011b:
                                                if(this._boulderList.length)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr012a:
                                                      §§push(this._playfieldProxy);
                                                      if(_loc3_)
                                                      {
                                                         §§pop().generateBoulders(this._boulderList.pop());
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         addr0144:
                                                         if(this._boulderList.length)
                                                         {
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               addr015b:
                                                               §§push(this._playfieldProxy);
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().generateBoulders(this._boulderList.pop());
                                                                  addr0164:
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     addr0189:
                                                                     if(this._boulderList.length)
                                                                     {
                                                                        if(!(_loc2_ && Boolean(_loc1_)))
                                                                        {
                                                                           §§push(this._playfieldProxy);
                                                                           if(!(_loc2_ && Boolean(this)))
                                                                           {
                                                                              addr01b1:
                                                                              §§pop().generateBoulders(this._boulderList.pop());
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr01c2:
                                                                                 if(!this._boulderList.length)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc2_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    addr01dd:
                                                                                    this._playfieldProxy.generateBoulders(this._boulderList.pop());
                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0246:
                                                                                    §§push(Boolean(this._boulderList.length));
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr0252:
                                                                                       var _temp_15:* = §§pop();
                                                                                       §§push(_temp_15);
                                                                                       §§push(_temp_15);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr0258:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                addr0269:
                                                                                                §§pop();
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr026f:
                                                                                                   §§push(Boolean(this._groundList.length));
                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                   {
                                                                                                      addr0283:
                                                                                                      var _temp_18:* = §§pop();
                                                                                                      addr0284:
                                                                                                      §§push(_temp_18);
                                                                                                      if(!_temp_18)
                                                                                                      {
                                                                                                         if(!(_loc2_ && Boolean(this)))
                                                                                                         {
                                                                                                            addr0295:
                                                                                                            §§pop();
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               §§goto(addr02b7);
                                                                                                            }
                                                                                                            §§goto(addr02c8);
                                                                                                         }
                                                                                                      }
                                                                                                      addr02b7:
                                                                                                      §§goto(addr02a3);
                                                                                                   }
                                                                                                   §§goto(addr0295);
                                                                                                }
                                                                                                addr02a3:
                                                                                                if(Boolean(this._buildingList.length))
                                                                                                {
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      addr02c8:
                                                                                                      TweenMax.delayedCall(1 / 24,this.generateItems);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this.finishGenerate();
                                                                                                }
                                                                                                §§goto(addr02e7);
                                                                                             }
                                                                                             §§goto(addr02b7);
                                                                                          }
                                                                                          §§goto(addr0283);
                                                                                       }
                                                                                       §§goto(addr0284);
                                                                                    }
                                                                                    §§goto(addr02b7);
                                                                                 }
                                                                                 §§goto(addr02e7);
                                                                              }
                                                                              §§goto(addr02c8);
                                                                           }
                                                                           §§goto(addr01dd);
                                                                        }
                                                                        §§goto(addr02e7);
                                                                     }
                                                                     §§goto(addr01c2);
                                                                  }
                                                                  §§goto(addr026f);
                                                               }
                                                               §§goto(addr01b1);
                                                            }
                                                            §§goto(addr02e7);
                                                         }
                                                         §§goto(addr0189);
                                                      }
                                                      §§goto(addr01dd);
                                                   }
                                                   §§goto(addr02e7);
                                                }
                                                §§goto(addr0144);
                                             }
                                             §§goto(addr015b);
                                          }
                                          §§goto(addr0164);
                                       }
                                       §§goto(addr015b);
                                    }
                                    §§goto(addr01dd);
                                 }
                                 §§goto(addr015b);
                              }
                              §§goto(addr02a3);
                           }
                           §§goto(addr00e3);
                        }
                        §§goto(addr02e7);
                     }
                     §§goto(addr012a);
                  }
                  §§goto(addr011b);
               }
               §§goto(addr005a);
            }
            §§goto(addr02e7);
         }
         §§push(Boolean(this._decorationList.length));
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            var _temp_23:* = §§pop();
            §§push(_temp_23);
            §§push(_temp_23);
            if(_loc3_ || Boolean(_loc1_))
            {
               if(!§§pop())
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§pop();
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr0246);
                     }
                     addr02e7:
                     return;
                  }
                  §§goto(addr0269);
               }
               §§goto(addr0252);
            }
            §§goto(addr0258);
         }
         §§goto(addr02b7);
      }
      
      private function finishGenerate() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            sendNotification(ApplicationNotificationConstants.FIELD_GENERATED,this._isoScene);
            if(_loc2_)
            {
               this._serverComProxy.stopServerSpool();
               if(_loc2_ || Boolean(this))
               {
                  this.setCurrentEmergency();
                  if(_loc2_)
                  {
                     this._playfieldProxy.updateShops();
                     if(!_loc3_)
                     {
                        sendNotification(ApplicationNotificationConstants.CHECK_DAILY_NEWSSCREEN);
                        if(_loc2_ || _loc2_)
                        {
                           this.delayedCitysquareCheck();
                           if(!(_loc3_ && _loc3_))
                           {
                              addr008b:
                              TweenMax.delayedCall(15,this.delayedCitysquareCheck);
                              if(_loc2_ || _loc2_)
                              {
                                 addr00b2:
                                 sendNotification(ApplicationNotificationConstants.STOP_PLAYFIELD_LOADING_ANIMATION);
                                 if(_loc2_ || _loc3_)
                                 {
                                    this._timerProxy.stopRenderTimer = false;
                                 }
                              }
                           }
                        }
                     }
                     var _loc1_:CitizensProxy = facade.retrieveProxy(CitizensProxy.NAME) as CitizensProxy;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.scanForPfoTags();
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0103:
                           _loc1_.resetSpawnedList();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              this._isoScene.container.visible = true;
                              if(_loc2_)
                              {
                                 addr0124:
                                 this._eventStreamProxy.onClientFinishedLoading();
                                 if(_loc2_ || Boolean(this))
                                 {
                                    sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TIMESTAMP_REQUEST);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr0158);
                                    }
                                 }
                              }
                              §§goto(addr0168);
                           }
                           §§goto(addr0124);
                        }
                        addr0158:
                        facade.sendNotification(ApplicationNotificationConstants.START_APP_FULLSCREEN);
                        if(_loc2_)
                        {
                           addr0168:
                           facade.sendNotification(ApplicationNotificationConstants.SOUND_ACTIVE);
                        }
                        return;
                     }
                     §§goto(addr0103);
                  }
                  §§goto(addr00b2);
               }
            }
            §§goto(addr008b);
         }
         §§goto(addr00b2);
      }
      
      private function setCurrentEmergency() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:BillboardObject = null;
         var _loc1_:EmergencyProxy = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
         var _loc3_:int = 0;
         for each(_loc2_ in this._playfieldObjProxy.billboardList)
         {
            if(!_loc6_)
            {
               continue;
            }
            §§push(_loc2_.billboardObjectVo);
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               if(§§pop().hasEmergency())
               {
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     addr008f:
                     if(!_loc2_.billboardObjectVo.buildingDTO.emergencyDTO)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
                  _loc1_.currentEmergency = _loc2_.billboardObjectVo.buildingDTO.emergencyDTO;
               }
               continue;
            }
            §§goto(addr008f);
         }
      }
      
      private function delayedCitysquareCheck() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
            if(_loc2_)
            {
               facade.sendNotification(ApplicationNotificationConstants.CHECK_PLAYER_VERSION);
            }
         }
      }
   }
}

