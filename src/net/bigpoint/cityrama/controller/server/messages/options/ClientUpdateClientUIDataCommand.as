package net.bigpoint.cityrama.controller.server.messages.options
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientUpdateClientUIDataCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientUpdateClientUIDataCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         var _loc3_:Object = new Object();
         if(!(_loc5_ && Boolean(this)))
         {
            _loc3_.dat = new Object();
            if(!(_loc5_ && Boolean(param1)))
            {
               _loc3_.dat.lowTrf = !OptionsGlobalVariables.getInstance().normalCitizenAmount;
               if(_loc6_ || Boolean(this))
               {
                  addr0075:
                  _loc3_.dat.lowGq = !OptionsGlobalVariables.getInstance().highQuality;
                  if(!_loc5_)
                  {
                     _loc3_.dat.hTips = OptionsGlobalVariables.getInstance().showFloater;
                     if(_loc6_ || Boolean(param1))
                     {
                        _loc3_.dat.hFloater = OptionsGlobalVariables.getInstance().showDropIcons;
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           _loc3_.dat.rc = OptionsGlobalVariables.getInstance().showRCVerification;
                           if(_loc6_)
                           {
                              _loc3_.dat.fastIlayer = OptionsGlobalVariables.getInstance().fasterNotification;
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 addr010f:
                                 _loc3_.dat.fsOn = OptionsGlobalVariables.getInstance().fullscreenActive;
                                 if(!(_loc5_ && Boolean(param1)))
                                 {
                                    addr012e:
                                    _loc3_.dat.soundOn = OptionsGlobalVariables.getInstance().soundActive;
                                    if(!_loc5_)
                                    {
                                       addr0145:
                                       _loc3_.dat.vpi = OptionsGlobalVariables.getInstance().viewedPlayfieldItemConfigIds;
                                       if(_loc6_)
                                       {
                                          addr0168:
                                          _loc3_.dat.vq = OptionsGlobalVariables.getInstance().viewedQuests;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr0179);
                           }
                           §§goto(addr012e);
                        }
                        §§goto(addr010f);
                     }
                     §§goto(addr0168);
                  }
                  §§goto(addr0179);
               }
               §§goto(addr0145);
            }
            addr0179:
            var _loc4_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.UPDATE_CLIENT_UI_DATA);
            if(_loc6_ || Boolean(param1))
            {
               _loc2_.sendMessage(_loc4_);
            }
            return;
         }
         §§goto(addr0075);
      }
   }
}

