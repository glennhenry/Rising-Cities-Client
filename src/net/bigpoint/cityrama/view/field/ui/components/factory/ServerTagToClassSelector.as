package net.bigpoint.cityrama.view.field.ui.components.factory
{
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.factorys.InfrastructureDecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.PierObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.SquareObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.StreetObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IBillboardObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.AcademyFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CinemaFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PowerplantFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ScheduledDropFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ground.ui.components.SquareObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.StreetObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ActivatorFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.PowerplantFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   
   public class ServerTagToClassSelector
   {
      
      public function ServerTagToClassSelector()
      {
         super();
      }
      
      public static function getFieldObjectClassByTags(param1:ConfigPlayfieldItemDTO, param2:Dictionary) : Class
      {
         var _loc9_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Vector.<String> = new Vector.<String>(0);
         for each(_loc9_ in param1.tagIds)
         {
            _loc8_.push(ConfigTagDTO(param2[_loc9_]).tagName);
            switch(ConfigTagDTO(param2[_loc9_]).tagName)
            {
               case ServerTagConstants.BUILDING:
                  _loc3_ = true;
                  break;
               case ServerTagConstants.DECORATION:
                  _loc4_ = true;
                  break;
               case ServerTagConstants.GROUND:
                  _loc5_ = true;
                  break;
               case ServerTagConstants.SPECIAL:
                  _loc6_ = true;
                  break;
               case ServerTagConstants.BOULDER:
                  _loc7_ = true;
            }
         }
         if(_loc3_ && !_loc6_)
         {
            if(_loc8_.indexOf(ServerTagConstants.RESIDENTIAL) != -1)
            {
               return ResidentialFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.SHOP) != -1)
            {
               return ShopFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.POWERPLANT) != -1)
            {
               return PowerplantFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.PRODUCTION) != -1)
            {
               return ProductionFieldObject;
            }
         }
         else if(_loc3_ && _loc6_)
         {
            if(_loc8_.indexOf(ServerTagConstants.BUILDING_TOWNHALL) != -1)
            {
               return TownHallFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.BUILDING_EVENTSQUARE) != -1)
            {
               return CitySquareFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.SCHOOL) != -1)
            {
               return AcademyFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.SECURITY_DEVICE) != -1)
            {
               return InfrastructureBuildingFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.MYSTERY) != -1)
            {
               return MysteryBuildingFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.BUILDING_ACTIVATOR) != -1)
            {
               return ActivatorFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.CINEMA) != -1)
            {
               return CinemaFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.CLIENT_SCHEDULED_DROP) != -1)
            {
               return ScheduledDropFieldObject;
            }
         }
         else if(_loc4_ && !_loc3_)
         {
            if(_loc8_.indexOf(ServerTagConstants.SECURITY_DEVICE) == -1)
            {
               return DecorationFieldObject;
            }
            if(_loc8_.indexOf(ServerTagConstants.SECURITY_DEVICE) != -1)
            {
               return InfrastructureDecorationFieldObject;
            }
         }
         else if(_loc5_)
         {
            if(param1.walkable && param1.driveable)
            {
               return StreetObject;
            }
            if(param1.walkable && !param1.driveable)
            {
               return SquareObject;
            }
         }
         else if(_loc7_)
         {
            return BoulderFieldObject;
         }
         if(param1.virtualObjectOverride == ServerTagConstants.VIRTUAL_EXPANSION)
         {
            return ExpansionFieldObject;
         }
         throw new IllegalOperationError("Class cannot be created, unknown config item");
      }
      
      public static function getFieldObjectVoClassByTags(param1:ConfigPlayfieldItemDTO, param2:Cuboid, param3:TimerProxy, param4:GameConfigProxy, param5:PlayfieldProxy) : IGameObjectVo
      {
         var _loc14_:Number = NaN;
         var _loc15_:IGameObjectVo = null;
         var _loc6_:Dictionary = param4.config.tags;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Vector.<String> = new Vector.<String>(0);
         for each(_loc14_ in param1.tagIds)
         {
            _loc13_.push(ConfigTagDTO(_loc6_[_loc14_]).tagName);
            switch(ConfigTagDTO(_loc6_[_loc14_]).tagName)
            {
               case ServerTagConstants.BUILDING:
                  _loc7_ = true;
                  break;
               case ServerTagConstants.DECORATION:
                  _loc8_ = true;
                  break;
               case ServerTagConstants.GROUND:
                  _loc9_ = true;
                  break;
               case ServerTagConstants.SPECIAL:
                  _loc10_ = true;
                  break;
               case ServerTagConstants.BOULDER:
                  _loc11_ = true;
                  break;
               case ServerTagConstants.DOCK:
                  _loc12_ = true;
            }
         }
         if(_loc7_ && !_loc10_)
         {
            if(_loc13_.indexOf(ServerTagConstants.RESIDENTIAL) != -1)
            {
               _loc15_ = new ResidentialFieldObjectVo(param1);
               _loc15_.matrix3dCoordinates = param2;
               _loc15_ = ConfigFactory.buildResidentialFieldObjectVo(_loc15_ as ResidentialFieldObjectVo);
            }
            else if(_loc13_.indexOf(ServerTagConstants.SHOP) != -1)
            {
               _loc15_ = new ShopFieldObjectVo(param1);
               _loc15_.matrix3dCoordinates = param2;
               _loc15_ = ConfigFactory.buildShopFieldObjectVo(_loc15_ as ShopFieldObjectVo);
            }
            else if(_loc13_.indexOf(ServerTagConstants.POWERPLANT) != -1)
            {
               _loc15_ = new PowerplantFieldObjectVo(param1);
            }
            else if(_loc13_.indexOf(ServerTagConstants.PRODUCTION) != -1)
            {
               _loc15_ = new ProductionFieldObjectVo(param1);
               _loc15_.matrix3dCoordinates = param2;
               _loc15_ = ConfigFactory.buildProductionFieldObjectVo(_loc15_ as ProductionFieldObjectVo);
            }
         }
         else if(_loc7_ && _loc10_)
         {
            if(_loc13_.indexOf(ServerTagConstants.BUILDING_TOWNHALL) != -1)
            {
               _loc15_ = new TownHallFieldObjectVo(param1);
            }
            else if(_loc13_.indexOf(ServerTagConstants.BUILDING_EVENTSQUARE) != -1)
            {
               _loc15_ = new CitySquareFieldObjectVo(param1);
               _loc15_.matrix3dCoordinates = param2;
               _loc15_ = ConfigFactory.buildCitySquareFieldObjectVo(_loc15_ as CitySquareFieldObjectVo);
            }
            else if(_loc13_.indexOf(ServerTagConstants.SCHOOL) != -1)
            {
               _loc15_ = new AcademyFieldObjectVo(param1);
            }
            else if(_loc13_.indexOf(ServerTagConstants.SECURITY_DEVICE) != -1)
            {
               _loc15_ = new InfrastructureBuildingFieldObjectVo(param1);
            }
            else if(_loc13_.indexOf(ServerTagConstants.MYSTERY) != -1)
            {
               _loc15_ = new MysteryBuildingObjectVo(param1);
            }
            else if(_loc13_.indexOf(ServerTagConstants.BUILDING_ACTIVATOR) != -1)
            {
               _loc15_ = new SpecialFieldObjectVo(param1);
            }
            else if(_loc13_.indexOf(ServerTagConstants.CINEMA) != -1)
            {
               _loc15_ = new CinemaFieldObjectVo(param1);
            }
            else if(_loc13_.indexOf(ServerTagConstants.CLIENT_SCHEDULED_DROP) != -1)
            {
               _loc15_ = new ScheduledDropFieldObjectVo(param1);
            }
         }
         else if(_loc8_ && !_loc7_)
         {
            if(_loc13_.indexOf(ServerTagConstants.SECURITY_DEVICE) == -1)
            {
               _loc15_ = new DecorationFieldObjectVo(param1);
            }
            else if(_loc13_.indexOf(ServerTagConstants.SECURITY_DEVICE) != -1)
            {
               _loc15_ = new InfrastructureDecorationFieldObjectVo(param1);
            }
         }
         else if(_loc9_)
         {
            if(_loc12_)
            {
               _loc15_ = new PierObjectVo(param1,param5.tileSize);
            }
            else if(param1.tags.indexOf(ServerTagConstants.SQUARE) != -1)
            {
               _loc15_ = new SquareObjectVo(param1,param5.tileSize);
            }
            else if(param1.tags.indexOf(ServerTagConstants.STREET) != -1)
            {
               _loc15_ = new StreetObjectVo(param1,param5.tileSize);
            }
         }
         else if(_loc11_)
         {
            _loc15_ = new BoulderObjectVo(param1);
            _loc15_.matrix3dCoordinates = param2;
            _loc15_ = ConfigFactory.buildBoulderObjectVo(_loc15_ as BoulderObjectVo);
         }
         if(param1.virtualObjectOverride == ServerTagConstants.VIRTUAL_EXPANSION)
         {
            _loc15_ = new ExpansionFieldObjectVo(param1);
         }
         if(_loc15_ is IBillboardObjectVo)
         {
            IBillboardObjectVo(_loc15_).currentTimeStamp = param3.currentTimeStamp;
         }
         if(_loc15_ == null)
         {
            throw new IllegalOperationError("Class cannot be created, unknown config item");
         }
         _loc15_.matrix3dCoordinates = param2;
         return _loc15_;
      }
   }
}

