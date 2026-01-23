package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldCreateGroundFailed extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldCreateGroundFailed()
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
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc7_:GroundDTO = null;
         var _loc8_:IPlaneObject = null;
         var _loc9_:PlayfieldProxy = null;
         var _loc10_:TimerProxy = null;
         var _loc11_:FilePreloadServiceProxy = null;
         var _loc12_:ConfigPlayfieldItemDTO = null;
         var _loc13_:Cuboid = null;
         var _loc14_:PlaneObjectVo = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:ApplicationModeProxy = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
         var _loc6_:IPlaneObjectVo = _loc3_.getGameObjectByCuboid(new Cuboid(_loc2_.json.g.x,_loc2_.json.g.y,0,1,1,0)) as IPlaneObjectVo;
         if(_loc6_ == null)
         {
            throw new RamaCityError("ServerMessageCreateBuildingFailedCommand: PlaneObjectVo NULL!!");
         }
         if(!(_loc16_ && Boolean(this)))
         {
            _loc8_ = _loc3_.getObjectByVo(_loc6_) as IPlaneObject;
            if(_loc8_ == null)
            {
               throw new RamaCityError("ServerMessageCreateBuildingFailedCommand: PlaneObject NULL!!");
            }
            if(_loc15_)
            {
               _loc3_.removeGameObjectVofromMatrix(_loc6_);
               if(!(_loc16_ && Boolean(_loc3_)))
               {
                  sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc8_);
                  addr00fe:
                  if(!(_loc16_ && Boolean(param1)))
                  {
                     addr014b:
                     if(_loc2_.json.g.c != 0)
                     {
                        if(_loc15_)
                        {
                           addr0162:
                           _loc7_ = new GroundDTO(_loc2_.json.g,_loc4_.getConfigPlayfieldItemById(_loc2_.json.g.c));
                           addr0186:
                           if(_loc7_)
                           {
                              if(_loc15_ || Boolean(_loc2_))
                              {
                                 addr019a:
                                 _loc9_ = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
                                 _loc10_ = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
                                 _loc11_ = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
                                 _loc12_ = _loc4_.getConfigPlayfieldItemById(_loc7_.configId);
                                 _loc13_ = new Cuboid(_loc7_.posX,_loc7_.posY,VectorUtilities.getMinValue(_loc12_.zLevels),_loc12_.sizeX,_loc12_.sizeY,1);
                                 _loc14_ = PlaneObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc12_,_loc13_,_loc10_,_loc4_,_loc9_));
                                 _loc14_.groundDTO = _loc7_;
                                 if(!(_loc16_ && Boolean(_loc2_)))
                                 {
                                    _loc3_.addGameObjectByData(_loc14_);
                                 }
                                 addr0260:
                                 _loc5_.mode = ApplicationModeProxy.MODE_NORMAL;
                              }
                              return;
                           }
                           §§goto(addr0260);
                        }
                        §§goto(addr019a);
                     }
                     §§goto(addr0186);
                  }
                  §§goto(addr0162);
               }
               §§goto(addr019a);
            }
            §§goto(addr00fe);
         }
         §§goto(addr014b);
      }
   }
}

