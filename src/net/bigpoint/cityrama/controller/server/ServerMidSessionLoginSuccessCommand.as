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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:* = false;
         var _loc4_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc5_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc6_:PlayerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
         var _loc7_:ServerConfigProxy = facade.retrieveProxy(ServerConfigProxy.NAME) as ServerConfigProxy;
         var _loc8_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc9_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc10_:OptionsMenuMediator = facade.retrieveMediator(OptionsMenuMediator.NAME) as OptionsMenuMediator;
         _loc3_ = _loc4_.config.version != _loc2_.json.config.v;
         _loc9_.isBaseViewEnabled = false;
         if(_loc10_)
         {
            _loc10_.component.subMenueBasement.selected = _loc9_.isBaseViewEnabled;
         }
         if(!_loc3_)
         {
            var _loc11_:PlayerDTO = new PlayerDTO(_loc2_.json.player);
            var _loc12_:ConfigPlayfieldDTO = _loc4_.getConfigPlayfieldVoById(_loc2_.json.playfield.c);
            var _loc13_:Vector.<BuildingDTO> = _loc8_.createBuidingDTOsForPlayfieldDTO(_loc2_.json.playfield.b);
            var _loc14_:Vector.<DecorationVo> = _loc8_.createDecorationVosForPlayfieldDTO(_loc2_.json.playfield.d);
            var _loc15_:Vector.<GroundDTO> = _loc8_.createGroundVosForPlayfieldDTO(_loc2_.json.playfield.g);
            if(_loc2_.json.playfield != null)
            {
               _loc8_.playfieldDTO = new PlayfieldDTO(_loc2_.json.playfield,null,null,null,null);
            }
            _loc6_.player = null;
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TIMESTAMP_REQUEST);
            if(_loc7_.connectionCounter > 1)
            {
               var _loc16_:KeyboardInputActionProxy = facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
               _loc16_.resetView();
               _loc7_.connectionCounter = 0;
            }
         }
         else
         {
            facade.sendNotification(MiniLayerConstants.OPEN_MINI_CONNECTIONLOST,null);
         }
      }
   }
}

