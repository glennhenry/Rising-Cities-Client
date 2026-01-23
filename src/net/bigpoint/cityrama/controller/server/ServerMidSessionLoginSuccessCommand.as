package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.ServerConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldDTO;
   import net.bigpoint.cityrama.view.mainMenu.OptionsMenuMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMidSessionLoginSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMidSessionLoginSuccessCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = _temp_1;
         var _loc11_:PlayerDTO = null;
         var _loc12_:ConfigPlayfieldDTO = null;
         var _loc13_:Vector.<BuildingDTO> = null;
         var _loc14_:Vector.<DecorationVo> = null;
         var _loc15_:Vector.<GroundDTO> = null;
         var _loc16_:KeyboardInputActionProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:* = false;
         var _loc4_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc5_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc6_:PlayerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
         var _loc7_:ServerConfigProxy = facade.retrieveProxy(ServerConfigProxy.NAME) as ServerConfigProxy;
         var _loc8_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc9_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc10_:OptionsMenuMediator = facade.retrieveMediator(OptionsMenuMediator.NAME) as OptionsMenuMediator;
         if(!(_loc17_ && Boolean(this)))
         {
            §§push(_loc4_.config.version == _loc2_.json.config.v);
            if(_loc18_)
            {
               §§push(!§§pop());
               if(_loc18_)
               {
                  _loc3_ = §§pop();
                  if(!(_loc17_ && Boolean(param1)))
                  {
                     _loc9_.isBaseViewEnabled = false;
                     if(!_loc17_)
                     {
                        if(_loc10_)
                        {
                           if(_loc18_ || Boolean(param1))
                           {
                              _loc10_.component.subMenueBasement.selected = _loc9_.isBaseViewEnabled;
                              if(_loc18_)
                              {
                                 addr0157:
                                 addr0158:
                                 if(!_loc3_)
                                 {
                                    if(_loc18_)
                                    {
                                       _loc11_ = new PlayerDTO(_loc2_.json.player);
                                       _loc12_ = _loc4_.getConfigPlayfieldVoById(_loc2_.json.playfield.c);
                                       _loc13_ = _loc8_.createBuidingDTOsForPlayfieldDTO(_loc2_.json.playfield.b);
                                       _loc14_ = _loc8_.createDecorationVosForPlayfieldDTO(_loc2_.json.playfield.d);
                                       _loc15_ = _loc8_.createGroundVosForPlayfieldDTO(_loc2_.json.playfield.g);
                                       if(_loc18_ || Boolean(param1))
                                       {
                                          if(_loc2_.json.playfield != null)
                                          {
                                             if(_loc18_ || _loc3_)
                                             {
                                                _loc8_.playfieldDTO = new PlayfieldDTO(_loc2_.json.playfield,_loc12_,_loc13_,_loc14_,_loc15_);
                                                if(_loc18_ || Boolean(_loc2_))
                                                {
                                                   addr0223:
                                                   _loc6_.player = _loc11_;
                                                   if(_loc18_ || Boolean(this))
                                                   {
                                                      addr0238:
                                                      sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TIMESTAMP_REQUEST);
                                                      if(!_loc17_)
                                                      {
                                                         if(_loc7_.connectionCounter > 1)
                                                         {
                                                            addr0262:
                                                            _loc16_ = facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
                                                            _loc16_.resetView();
                                                            if(!_loc17_)
                                                            {
                                                               _loc7_.connectionCounter = 0;
                                                            }
                                                         }
                                                         §§goto(addr0297);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr0262);
                                          }
                                          §§goto(addr0223);
                                       }
                                       §§goto(addr0238);
                                    }
                                 }
                                 else
                                 {
                                    facade.sendNotification(MiniLayerConstants.OPEN_MINI_CONNECTIONLOST,null);
                                 }
                              }
                           }
                           §§goto(addr0297);
                        }
                        §§goto(addr0157);
                     }
                  }
                  addr0297:
                  return;
               }
            }
            §§goto(addr0158);
         }
         §§goto(addr0157);
      }
   }
}

