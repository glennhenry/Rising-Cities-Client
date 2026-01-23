package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingNewCommand extends SimpleCommand implements ICommand
   {
      
      private var _configProxy:GameConfigProxy;
      
      public function ServerMessagePlayfieldBuildingNewCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc13_:ConfigPlayfieldItemDTO = null;
         var _loc14_:Cuboid = null;
         var _loc15_:BillboardObjectVo = null;
         var _loc16_:BillboardObjectVo = null;
         var _loc17_:SecurityMatrixProxy = null;
         if(_loc19_)
         {
            this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc5_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc6_:FilePreloadServiceProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         var _loc7_:ApplicationModeProxy = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
         var _loc8_:BuildingDTO = new BuildingDTO(_loc2_.json.b,this._configProxy.getConfigPlayfieldItemById(_loc2_.json.b.c));
         var _loc9_:Cuboid = new Cuboid(_loc8_.posX,_loc8_.posY,0,_loc8_.config.sizeX,_loc8_.config.sizeY,_loc8_.config.zLevels.length);
         var _loc10_:IGameObjectVo = _loc3_.getGameObjectByCuboid(_loc9_);
         var _loc11_:BillboardObject = _loc3_.getBillboardById(_loc8_.id);
         if(_loc19_)
         {
            §§push(_loc10_ is BillboardObjectVo);
            if(!(_loc18_ && Boolean(_loc3_)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(!_loc18_)
               {
                  if(!§§pop())
                  {
                     if(_loc19_)
                     {
                        §§pop();
                        if(!(_loc18_ && Boolean(_loc2_)))
                        {
                           addr0167:
                           §§push(_loc11_ is IEstablishedManagerImplementation);
                           if(!_loc18_)
                           {
                              addr0173:
                              var _temp_5:* = §§pop();
                              §§push(_temp_5);
                              §§push(_temp_5);
                              if(!_loc18_)
                              {
                                 addr017a:
                                 if(!§§pop())
                                 {
                                    if(_loc19_)
                                    {
                                       §§pop();
                                       if(!_loc18_)
                                       {
                                          §§push(_loc11_ is IBuildUpManagerImplementation);
                                          if(_loc19_ || Boolean(_loc3_))
                                          {
                                             addr019f:
                                             var _temp_7:* = §§pop();
                                             §§push(_temp_7);
                                             §§push(_temp_7);
                                             if(!_loc18_)
                                             {
                                                if(!§§pop())
                                                {
                                                   addr01cf:
                                                   addr01ce:
                                                   if(!(_loc18_ && Boolean(_loc2_)))
                                                   {
                                                      addr01b8:
                                                      §§pop();
                                                      addr01b9:
                                                      §§push(_loc11_ is ProductionFieldObject);
                                                      if(_loc19_ || Boolean(param1))
                                                      {
                                                         addr01cd:
                                                         §§push(§§pop());
                                                      }
                                                   }
                                                   var _temp_10:* = §§pop();
                                                   var _loc12_:* = §§pop();
                                                   §§push(_loc12_);
                                                   if(!_loc18_)
                                                   {
                                                      if(§§pop() == false)
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            _loc13_ = this._configProxy.getConfigPlayfieldItemById(_loc8_.configId);
                                                            _loc14_ = new Cuboid(_loc8_.posX,_loc8_.posY,VectorUtilities.getMinValue(_loc13_.zLevels),_loc13_.sizeX,_loc13_.sizeY,_loc13_.zLevels.length);
                                                            _loc15_ = BillboardObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc13_,_loc14_,_loc5_,this._configProxy,_loc4_));
                                                            _loc15_.buildingDTO = _loc8_;
                                                            if(!_loc18_)
                                                            {
                                                               PlayfieldObjectsProxy.addIconOffsets(_loc15_,_loc6_);
                                                               if(_loc19_)
                                                               {
                                                                  if(_loc15_ is IImprovable)
                                                                  {
                                                                     if(_loc19_)
                                                                     {
                                                                        this.generateImprovements(_loc15_);
                                                                        if(!(_loc18_ && Boolean(param1)))
                                                                        {
                                                                           addr0295:
                                                                           _loc3_.addGameObjectByData(_loc15_);
                                                                           if(_loc19_ || Boolean(_loc2_))
                                                                           {
                                                                              return;
                                                                           }
                                                                        }
                                                                        addr02ab:
                                                                        §§push(_loc10_ is BillboardObjectVo);
                                                                        if(!(_loc18_ && Boolean(param1)))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 _loc16_ = _loc10_ as BillboardObjectVo;
                                                                                 _loc16_.buildingDTO = _loc8_;
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    if(_loc16_ is IImprovable)
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr02f0:
                                                                                          this.generateImprovements(_loc16_);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             addr02fd:
                                                                                             sendNotification(ApplicationNotificationConstants.CELEBRATING_CITIZEN,_loc10_);
                                                                                          }
                                                                                       }
                                                                                       addr0309:
                                                                                       §§push(_loc11_ is IEstablishedManagerImplementation);
                                                                                       if(!(_loc18_ && Boolean(this)))
                                                                                       {
                                                                                          addr031d:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc19_ || Boolean(param1))
                                                                                             {
                                                                                                (_loc11_ as IEstablishedManagerImplementation).invalidateEstablishedManager();
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   addr033f:
                                                                                                   §§push(_loc11_ is IBuildUpManagerImplementation);
                                                                                                   if(!(_loc18_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      addr0353:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc18_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            §§goto(addr0365);
                                                                                                         }
                                                                                                         §§goto(addr03b1);
                                                                                                      }
                                                                                                      §§goto(addr0375);
                                                                                                   }
                                                                                                   §§goto(addr03b7);
                                                                                                }
                                                                                                §§goto(addr03b1);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr033f);
                                                                                       }
                                                                                       §§goto(addr0389);
                                                                                    }
                                                                                    §§goto(addr02fd);
                                                                                 }
                                                                                 §§goto(addr02f0);
                                                                              }
                                                                              addr0365:
                                                                              (_loc11_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
                                                                              if(!_loc18_)
                                                                              {
                                                                                 addr0375:
                                                                                 §§push(_loc11_ is ProductionFieldObject);
                                                                                 if(!(_loc18_ && Boolean(this)))
                                                                                 {
                                                                                    addr0389:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§goto(addr0393);
                                                                                       }
                                                                                       §§goto(addr0416);
                                                                                    }
                                                                                    §§goto(addr03b1);
                                                                                 }
                                                                                 §§goto(addr03b7);
                                                                              }
                                                                              addr0393:
                                                                              ConfigFactory.buildProductionFieldObjectVo((_loc11_ as ProductionFieldObject).productionFieldObjectVo);
                                                                              if(_loc19_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr03b1:
                                                                                 addr03b7:
                                                                                 if(_loc11_ is IEmergencyInfrastructure)
                                                                                 {
                                                                                    if(!(_loc18_ && Boolean(this)))
                                                                                    {
                                                                                       _loc17_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
                                                                                       _loc17_.addObject((_loc11_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                                                                                       addr03f9:
                                                                                       if(_loc7_.mode == ApplicationModeProxy.MODE_MOVE)
                                                                                       {
                                                                                          if(_loc19_ || Boolean(this))
                                                                                          {
                                                                                             addr0416:
                                                                                             facade.sendNotification(ApplicationNotificationConstants.HIDE_ALL_ICONS);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0420);
                                                                                 }
                                                                                 §§goto(addr03f9);
                                                                              }
                                                                              addr0420:
                                                                              return;
                                                                           }
                                                                           §§goto(addr0309);
                                                                        }
                                                                        §§goto(addr0353);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr0295);
                                                         }
                                                         §§goto(addr0375);
                                                      }
                                                      §§goto(addr02ab);
                                                   }
                                                   §§goto(addr031d);
                                                }
                                                §§goto(addr01cd);
                                             }
                                             §§goto(addr01cf);
                                          }
                                          §§goto(addr01ce);
                                       }
                                       §§goto(addr01b9);
                                    }
                                    §§goto(addr01ce);
                                 }
                                 §§goto(addr019f);
                              }
                              §§goto(addr01cf);
                           }
                           §§goto(addr01b8);
                        }
                        §§goto(addr01b9);
                     }
                     §§goto(addr019f);
                  }
                  §§goto(addr0173);
               }
               §§goto(addr017a);
            }
            §§goto(addr01ce);
         }
         §§goto(addr0167);
      }
      
      private function generateImprovements(param1:BillboardObjectVo) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Vector.<ImprovementVo> = null;
         var _loc3_:ImprovementDTO = null;
         if(!_loc7_)
         {
            if(param1 is IImprovable)
            {
               addr002e:
               _loc2_ = new Vector.<ImprovementVo>();
               for each(_loc3_ in param1.buildingDTO.improvements)
               {
                  if(_loc6_ || Boolean(this))
                  {
                     _loc2_.push(new ImprovementVo(_loc3_,this._configProxy.config.improvements[_loc3_.configId]));
                  }
               }
               if(!_loc7_)
               {
                  (param1 as IImprovable).currentImprovements = _loc2_;
               }
            }
            return;
         }
         §§goto(addr002e);
      }
   }
}

