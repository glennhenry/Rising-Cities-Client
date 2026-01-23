package net.bigpoint.cityrama.model.player
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayerResourceProxy extends Proxy
   {
      
      public static const NAME:String = "PlayerResourceProxy";
      
      private var _globalBalanceProxy:GlobalBalanceProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _experience:Number = 0;
      
      private var _maxExperience:Number = 0;
      
      private var _ingameCurrency:Number = 0;
      
      private var _realCurrency:Number = 0;
      
      private var _productionPoints:Number = 0;
      
      private var _educationPoints:Number = 0;
      
      private var _userLevel:int;
      
      private var _workers:Number = 0;
      
      private var _richMen:Number = 0;
      
      private var _academics:Number = 0;
      
      private var _desiredBuyAction:Vector.<BuyProcedureVo>;
      
      public function PlayerResourceProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._globalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
      }
      
      override public function onRegister() : void
      {
         this._desiredBuyAction = new Vector.<BuyProcedureVo>();
      }
      
      public function get experience() : Number
      {
         return this._experience;
      }
      
      public function set experience(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(param1,this._experience))
         {
            this._experience = param1;
            sendNotification(ApplicationNotificationConstants.XP_CHANGED,param1);
         }
      }
      
      public function get maxExperience() : Number
      {
         return this._maxExperience;
      }
      
      public function get realCurrency() : Number
      {
         return this._realCurrency;
      }
      
      public function set realCurrency(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(param1,this._realCurrency))
         {
            this._realCurrency = param1;
            sendNotification(ApplicationNotificationConstants.REALCURRENCY_CHANGED,param1);
         }
      }
      
      public function get ingameCurrency() : Number
      {
         return this._ingameCurrency;
      }
      
      public function set ingameCurrency(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(param1,this._ingameCurrency))
         {
            this._ingameCurrency = param1;
            sendNotification(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED,param1);
         }
      }
      
      override public function onRemove() : void
      {
      }
      
      public function set maxExperience(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(this._maxExperience,param1))
         {
            this._maxExperience = param1;
            sendNotification(ApplicationNotificationConstants.MAXXP_CHANGED,param1);
         }
      }
      
      public function get desiredBuyAction() : Vector.<BuyProcedureVo>
      {
         return this._desiredBuyAction;
      }
      
      public function set desiredBuyAction(param1:Vector.<BuyProcedureVo>) : void
      {
         this._desiredBuyAction = param1;
      }
      
      public function get userLevel() : int
      {
         return this._userLevel;
      }
      
      public function set userLevel(param1:int) : void
      {
         if(!RandomUtilities.isEqual(param1,this._userLevel))
         {
            this._userLevel = param1;
            sendNotification(ApplicationNotificationConstants.USERLEVEL_CHANGED,this._userLevel);
         }
      }
      
      public function get population() : Number
      {
         return this.worker + this.richMen + this.academics;
      }
      
      public function get maxPopulation() : Number
      {
         return this._workers + this._richMen + this._academics;
      }
      
      public function get productionPoints() : Number
      {
         return this._productionPoints;
      }
      
      public function set productionPoints(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(param1,this._productionPoints))
         {
            this._productionPoints = param1;
            sendNotification(ApplicationNotificationConstants.PRODUCTIONPOINTS_CHANGED,this._productionPoints);
         }
      }
      
      public function get worker() : Number
      {
         return this._workers * this._globalBalanceProxy.happinessOutputModifier;
      }
      
      public function set worker(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(param1,this._workers))
         {
            this._workers = param1;
            sendNotification(ApplicationNotificationConstants.WORKERS_CHANGED,this._workers);
         }
      }
      
      public function set academics(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(param1,this._academics))
         {
            this._academics = param1;
            sendNotification(ApplicationNotificationConstants.ACADEMICS_CHANGED,this._academics);
         }
      }
      
      public function get richMen() : Number
      {
         return this._richMen * this._globalBalanceProxy.happinessOutputModifier;
      }
      
      public function get academics() : Number
      {
         return this._academics * this._globalBalanceProxy.happinessOutputModifier;
      }
      
      public function set richMen(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(param1,this._richMen))
         {
            this._richMen = param1;
            sendNotification(ApplicationNotificationConstants.RICHMEN_CHANGED,this._richMen);
         }
      }
      
      public function get educationPoints() : Number
      {
         return this._educationPoints;
      }
      
      public function set educationPoints(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(param1,this._educationPoints))
         {
            this._educationPoints = param1;
            sendNotification(ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED,this._educationPoints);
         }
      }
      
      public function get academicsEnabled() : Boolean
      {
         var _loc1_:ConfigResourceDTO = this._configProxy.config.resources[this._configProxy.config.resourceIds[ServerResConst.RESOURCE_ACADEMICS]];
         if(_loc1_)
         {
            return this.userLevel >= this._configProxy.getLevelById(_loc1_.levelId).level;
         }
         return false;
      }
      
      public function get richMenEnabled() : Boolean
      {
         var _loc1_:ConfigResourceDTO = this._configProxy.config.resources[this._configProxy.config.resourceIds[ServerResConst.RESOURCE_RICHMEN]];
         if(_loc1_)
         {
            return this.userLevel >= this._configProxy.getLevelById(_loc1_.levelId).level;
         }
         return false;
      }
      
      public function get moreThanOnePopulationTypeEnabled() : Boolean
      {
         return this.richMenEnabled || this.academicsEnabled;
      }
      
      public function getResourceAmountByConstant(param1:String) : Number
      {
         switch(param1)
         {
            case ServerResConst.RESOURCE_REALCURRENCY:
               return this.realCurrency;
            case ServerResConst.RESOURCE_VIRTUALCURRENCY:
               return this.ingameCurrency;
            case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
               return this.productionPoints;
            case ServerResConst.RESOURCE_EDUCATIONPOINTS:
               return this.educationPoints;
            case ServerResConst.RESOURCE_EXPERIENCE:
               return this.experience;
            case ServerResConst.RESOURCE_POPULATION:
               return this.population;
            case ServerResConst.RESOURCE_WORKERS:
               return this.worker;
            case ServerResConst.RESOURCE_RICHMEN:
               return this.richMen;
            case ServerResConst.RESOURCE_ACADEMICS:
               return this.academics;
            default:
               throw new Error("Resource not covered by PlayerResourceProxy!");
         }
      }
   }
}

