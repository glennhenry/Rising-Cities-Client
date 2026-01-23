package net.bigpoint.cityrama.controller.server.messages.playfieldExpand
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.MatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldDTO;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.SpawnProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldSwitchSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldSwitchSuccessCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc2_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc3_:Boolean = false;
         if(_loc10_)
         {
            if(_loc2_.playfieldDTO == null)
            {
               if(_loc10_)
               {
                  addr0042:
                  _loc3_ = true;
                  if(!(_loc11_ && Boolean(param1)))
                  {
                     facade.sendNotification(ApplicationNotificationConstants.PREPARE_PLAYFIELD);
                  }
               }
            }
            var _loc4_:Object = MessageVo(param1.getBody()).json;
            var _loc5_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
            var _loc6_:ConfigPlayfieldDTO = _loc5_.getConfigPlayfieldVoById(_loc4_.p.c);
            var _loc7_:Vector.<BuildingDTO> = _loc2_.createBuidingDTOsForPlayfieldDTO(_loc4_.p.b);
            var _loc8_:Vector.<DecorationVo> = _loc2_.createDecorationVosForPlayfieldDTO(_loc4_.p.d);
            var _loc9_:Vector.<GroundDTO> = _loc2_.createGroundVosForPlayfieldDTO(_loc4_.p.g);
            if(_loc10_ || _loc3_)
            {
               _loc2_.playfieldDTO = new PlayfieldDTO(_loc4_.p,_loc6_,_loc7_,_loc8_,_loc9_);
               if(_loc10_ || Boolean(_loc2_))
               {
                  if(_loc3_)
                  {
                     if(!_loc11_)
                     {
                        facade.registerProxy(new PlaneProxy(PlaneProxy.NAME));
                        if(_loc10_ || Boolean(_loc2_))
                        {
                           facade.registerProxy(new NeedMatrixProxy(NeedMatrixProxy.NAME));
                           if(!(_loc11_ && Boolean(_loc2_)))
                           {
                              facade.registerProxy(new MatrixProxy(MatrixProxy.NAME));
                              if(!(_loc11_ && _loc3_))
                              {
                                 addr017a:
                                 facade.registerProxy(new PathWalkProxy());
                                 if(_loc10_ || Boolean(_loc2_))
                                 {
                                    addr0195:
                                    facade.registerProxy(new UrbiesLifeProxy());
                                    if(_loc10_)
                                    {
                                       §§goto(addr01a8);
                                    }
                                    §§goto(addr01d4);
                                 }
                                 §§goto(addr01c3);
                              }
                              §§goto(addr0195);
                           }
                           §§goto(addr01c3);
                        }
                        §§goto(addr017a);
                     }
                     addr01a8:
                     facade.registerProxy(new SpawnProxy());
                     if(_loc10_ || Boolean(_loc2_))
                     {
                        addr01c3:
                        facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_GENERATE);
                        if(!_loc11_)
                        {
                           addr01d4:
                           facade.sendNotification(ApplicationNotificationConstants.APPLICATION_MODES_SET_INITIAL);
                           if(!(_loc11_ && Boolean(param1)))
                           {
                              facade.sendNotification(ApplicationNotificationConstants.INIT_QUEST_SYSTEM);
                              if(_loc10_ || _loc3_)
                              {
                                 addr0214:
                                 facade.sendNotification(ApplicationNotificationConstants.FIELD_CENTER_ON_POINT,HorizionSettingsVo.centerPoint(_loc2_.config.gfxId));
                              }
                              §§goto(addr022b);
                           }
                           §§goto(addr0214);
                        }
                     }
                     §§goto(addr022b);
                  }
                  addr022b:
                  return;
               }
               §§goto(addr0214);
            }
            §§goto(addr0195);
         }
         §§goto(addr0042);
      }
   }
}

