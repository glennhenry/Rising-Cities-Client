package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldCreateGroundSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldCreateGroundSuccess()
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
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc12_:ConfigPlayfieldItemDTO = null;
         var _loc13_:Cuboid = null;
         var _loc14_:PlaneObjectVo = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc4_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc5_:FilePreloadServiceProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc7_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc8_:GroundDTO = new GroundDTO(_loc2_.json.g,_loc7_.getConfigPlayfieldItemById(_loc2_.json.g.c));
         var _loc9_:Cuboid = new Cuboid(_loc8_.posX,_loc8_.posY,0,_loc8_.config.sizeX,_loc8_.config.sizeY,_loc8_.config.zLevels.length);
         var _loc10_:IGameObjectVo = _loc6_.getGameObjectByCuboid(_loc9_);
         var _loc11_:* = _loc10_ is PlaneObjectVo;
         §§push(_loc11_);
         if(_loc16_ || Boolean(param1))
         {
            if(§§pop() == false)
            {
               if(_loc16_)
               {
                  _loc12_ = _loc7_.getConfigPlayfieldItemById(_loc8_.configId);
                  _loc13_ = new Cuboid(_loc8_.posX,_loc8_.posY,VectorUtilities.getMinValue(_loc12_.zLevels),_loc12_.sizeX,_loc12_.sizeY,1);
                  _loc14_ = PlaneObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc12_,_loc13_,_loc4_,_loc7_,_loc3_));
                  _loc14_.groundDTO = _loc8_;
                  if(_loc16_ || Boolean(param1))
                  {
                     _loc6_.addGameObjectByData(_loc14_);
                     if(_loc15_ && Boolean(_loc3_))
                     {
                        addr01b9:
                        addr01bf:
                        if(_loc10_ is PlaneObjectVo)
                        {
                           if(_loc16_ || Boolean(this))
                           {
                              (_loc10_ as PlaneObjectVo).groundDTO = _loc8_;
                           }
                        }
                        §§goto(addr01dc);
                     }
                  }
                  return;
               }
               addr01dc:
               return;
            }
            §§goto(addr01b9);
         }
         §§goto(addr01bf);
      }
   }
}

