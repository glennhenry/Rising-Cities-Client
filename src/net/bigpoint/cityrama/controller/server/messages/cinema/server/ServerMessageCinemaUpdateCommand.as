package net.bigpoint.cityrama.controller.server.messages.cinema.server
{
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.CinemaDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageCinemaUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageCinemaUpdateCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:CinemaFieldObject = null;
         var _loc2_:CityProxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:CinemaProxy = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
         var _loc5_:MessageVo = MessageVo(param1.getBody());
         if(_loc5_.json.c)
         {
            if(_loc8_)
            {
               _loc2_.updateCinema(new CinemaDTO(_loc5_.json.c));
               if(!_loc7_)
               {
                  addr0093:
                  §§push(_loc3_.cinemaFieldObject);
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     if(§§pop())
                     {
                        addr00b8:
                        _loc6_ = _loc3_.cinemaFieldObject;
                        _loc6_.cinemaFieldObjectVo.viewsToday = _loc4_.videosWatchedToday;
                        addr00b4:
                        if(_loc8_ || Boolean(this))
                        {
                           _loc6_.invalidateIconStateManager();
                        }
                     }
                     return;
                  }
                  §§goto(addr00b8);
               }
            }
            §§goto(addr00b4);
         }
         §§goto(addr0093);
      }
   }
}

