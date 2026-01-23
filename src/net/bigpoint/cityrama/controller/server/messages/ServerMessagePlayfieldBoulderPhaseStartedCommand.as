package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBoulderPhaseStartedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBoulderPhaseStartedCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      private static function checkSameOutputAndAdd(param1:Vector.<ConfigOutputDTO>) : Vector.<ConfigOutputDTO>
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc2_:Vector.<ConfigOutputDTO> = null;
         var _loc5_:Boolean = false;
         var _loc6_:ConfigOutputDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc8_:ConfigOutputDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc3_:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>();
         var _loc4_:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>();
         loop0:
         for each(_loc6_ in param1)
         {
            if(!(_loc14_ && Boolean(_loc3_)))
            {
               _loc5_ = false;
               if(_loc15_)
               {
                  addr0079:
                  if(_loc6_.goodConfig != null)
                  {
                     if(_loc15_ || Boolean(param1))
                     {
                        §§push(0);
                        if(_loc15_ || Boolean(param1))
                        {
                           var _loc12_:* = §§pop();
                           if(!(_loc14_ && Boolean(_loc2_)))
                           {
                              var _loc13_:* = _loc3_;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc13_,_loc12_));
                                 if(_loc15_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc8_ = §§nextvalue(_loc12_,_loc13_);
                                       if(_loc15_ || Boolean(param1))
                                       {
                                          if(_loc6_.configId != _loc8_.configId)
                                          {
                                             continue;
                                          }
                                          if(_loc14_ && Boolean(param1))
                                          {
                                             break;
                                          }
                                       }
                                       §§push(_loc8_);
                                       §§push(_loc8_.outputAmount);
                                       if(!(_loc14_ && ServerMessagePlayfieldBoulderPhaseStartedCommand))
                                       {
                                          §§push(§§pop() + _loc6_.outputAmount);
                                       }
                                       §§pop().outputAmount = §§pop();
                                       if(!_loc14_)
                                       {
                                          _loc5_ = true;
                                       }
                                       break;
                                    }
                                    if(!(_loc14_ && Boolean(_loc3_)))
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    loop3:
                                    while(§§pop())
                                    {
                                       _loc9_ = §§nextvalue(_loc12_,_loc13_);
                                       if(!(_loc14_ && Boolean(param1)))
                                       {
                                          if(_loc6_.configId != _loc9_.configId)
                                          {
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                continue loop3;
                                             }
                                             break;
                                             addr01de:
                                          }
                                          if(_loc14_ && ServerMessagePlayfieldBoulderPhaseStartedCommand)
                                          {
                                             break;
                                          }
                                          §§push(_loc9_);
                                          §§push(_loc9_.outputAmount);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop() + _loc6_.outputAmount);
                                          }
                                          §§pop().outputAmount = §§pop();
                                          if(!(_loc15_ || Boolean(param1)))
                                          {
                                             break;
                                          }
                                       }
                                       _loc5_ = true;
                                       break;
                                    }
                                 }
                                 if(!(_loc14_ && Boolean(param1)))
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!(_loc14_ && Boolean(param1)))
                                       {
                                          _loc4_.push(_loc6_);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              if(!_loc14_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!(_loc14_ && ServerMessagePlayfieldBoulderPhaseStartedCommand))
                                    {
                                       _loc3_.push(_loc6_);
                                    }
                                 }
                              }
                              continue;
                           }
                           addr0176:
                           _loc13_ = _loc4_;
                           §§goto(addr01de);
                        }
                        else
                        {
                           addr0174:
                           _loc12_ = §§pop();
                        }
                        §§goto(addr0176);
                     }
                     else
                     {
                        addr0172:
                        §§push(0);
                     }
                     §§goto(addr0174);
                  }
                  else if(_loc6_.resourceConfig == null)
                  {
                     continue;
                  }
               }
               §§goto(addr0172);
            }
            §§goto(addr0079);
         }
         _loc2_ = _loc3_;
         if(_loc15_ || Boolean(_loc2_))
         {
            var _loc10_:int = 0;
            if(_loc15_ || Boolean(_loc2_))
            {
               for each(_loc7_ in _loc4_)
               {
                  if(!_loc14_)
                  {
                     _loc2_.push(_loc7_);
                  }
               }
            }
         }
         return _loc2_;
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc6_:Vector.<PhaseDTO> = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:ConfigPhaseDTO = null;
         var _loc10_:Vector.<ConfigOutputDTO> = null;
         var _loc11_:ConfigOutputDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:BoulderFieldObject = _loc3_.getBillboardById(_loc2_.json.bid) as BoulderFieldObject;
         if(_loc5_ != null)
         {
            _loc6_ = new Vector.<PhaseDTO>();
            for each(_loc7_ in _loc2_.json.ph)
            {
               if(_loc14_ || Boolean(param1))
               {
                  _loc6_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc7_,_loc5_.boulderObjectVo.configPlayfieldItemVo));
               }
            }
            if(!_loc15_)
            {
               _loc5_.boulderObjectVo.activePhases = _loc6_;
            }
            _loc8_ = {};
            _loc8_.eo = _loc2_.json.out;
            if(_loc14_ || Boolean(_loc2_))
            {
               if(_loc8_.eo.length > 0)
               {
                  if(!_loc15_)
                  {
                     _loc9_ = new ConfigPhaseDTO(_loc8_);
                     _loc10_ = new Vector.<ConfigOutputDTO>();
                     if(_loc14_)
                     {
                        var _loc12_:int = 0;
                        if(_loc14_)
                        {
                           for each(_loc11_ in _loc9_.listEntryOutputs)
                           {
                              §§push(_loc11_.type);
                              if(_loc14_)
                              {
                                 §§push(ServerOutputConstants.GOOD);
                                 if(_loc14_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc14_ || Boolean(_loc2_)))
                                       {
                                          continue;
                                       }
                                       _loc11_.goodConfig = _loc4_.config.goods[_loc11_.configId];
                                       if(!(_loc14_ || Boolean(_loc3_)))
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       addr01c4:
                                       addr01be:
                                       if(_loc11_.type == ServerOutputConstants.RESOURCE)
                                       {
                                          if(!(_loc14_ || Boolean(_loc3_)))
                                          {
                                             continue;
                                          }
                                          _loc11_.resourceConfig = _loc4_.config.resources[_loc11_.configId];
                                          if(_loc15_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    _loc10_.push(_loc11_);
                                    continue;
                                 }
                                 §§goto(addr01c4);
                              }
                              §§goto(addr01be);
                           }
                        }
                     }
                     _loc10_ = checkSameOutputAndAdd(_loc10_);
                     if(!_loc15_)
                     {
                        _loc9_.listEntryOutputs = _loc10_;
                        if(!_loc15_)
                        {
                           §§push(_loc5_.boulderObjectVo);
                           if(_loc14_)
                           {
                              §§pop().boulderVo.currentOutput = _loc10_;
                              if(_loc14_ || Boolean(param1))
                              {
                                 addr0258:
                                 _loc5_.boulderObjectVo.informationFloaterPhase = _loc9_;
                                 if(!_loc15_)
                                 {
                                    addr0277:
                                    _loc5_.billboardObjectVo.userInteractionLocked = true;
                                    if(_loc14_)
                                    {
                                       _loc5_.invalidateBoulderDemolitionAssetManager();
                                    }
                                 }
                              }
                              §§goto(addr028b);
                           }
                           §§goto(addr0258);
                        }
                     }
                     §§goto(addr028b);
                  }
               }
               else
               {
                  _loc5_.boulderObjectVo.informationFloaterPhase = new ConfigPhaseDTO(null);
               }
            }
            §§goto(addr0277);
         }
         addr028b:
         _loc5_.billboardObjectVo.invalidate();
      }
   }
}

