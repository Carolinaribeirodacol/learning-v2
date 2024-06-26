import { Summary } from "./Summary";
import { MatchReader } from "./inheritance/MatchReader";

const matchReader = MatchReader.fromCsv('football.csv');
matchReader.load();

const summary = Summary.winsAnalysisWithHtmlReport('Man United')

summary.buildAndPrintReport(matchReader.matches)